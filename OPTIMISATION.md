# HLS Optimisation — Work Log and Handoff Notes

Record of the HLS optimisation work on the Canny kernel: what was changed, what the
synthesis reports measured, what was tried and abandoned, and what is left.

Target: `xck26-sfvc784-2LV-c` (Kria KV260), Vitis 2025.2, 200 MHz (5 ns period),
512x512 fixed resolution.

---

## 1. Summary

**Kernel compute time went from 19.04 ms to 4.26 ms per frame — a 4.47x speedup —
while reducing LUT and FF usage.**

| Metric | Before | After | Change |
|---|---|---|---|
| Interval (cycles/frame) | 3,808,796 | 851,709 | **4.47x faster** |
| Latency (cycles) | 3,808,795 | 851,708 | |
| Frame time @ 200 MHz | 19.04 ms | 4.26 ms | |
| Cycles per pixel | 14.5 | 3.25 | |
| BRAM | 53 (18%) | 66 (22%) | +13 |
| DSP | 4 (~0%) | 4 (~0%) | unchanged |
| FF | 25,777 (11%) | 18,369 (7%) | -29% |
| LUT | 37,909 (32%) | 31,399 (26%) | -17% |

Output is **bit-identical** to the pre-optimisation kernel and to the OpenCV-matching
reference implementations. No algorithm behaviour changed.

### Important caveat on "fps"

4.26 ms works out to ~235 fps, but **that is the HLS scheduler's estimate of kernel
compute time only.** It excludes:

- host<->DDR transfers (`in_buf.sync()` / `out_buf.sync()` in `canny_host/host.cpp`,
  currently fully serialised with kernel execution, no double buffering)
- XRT call overhead per frame
- camera capture and display (a typical USB webcam caps at 30-60 fps regardless)
- timing closure — C synthesis *assumes* 200 MHz is met; only place-and-route confirms it

The defensible claim is the **4.47x relative improvement**, measured the same way before
and after. Treat 235 fps as an upper bound on the kernel, not a system number. Real
end-to-end fps still needs measuring on the board.

---

## 2. Current state of the repository

- `src/` is byte-identical to commit **`2dc556d`**, which is the state that produced the
  851,709 result above.
- `src/grayscale.cpp` is **staged but not committed** — it is a revert of the failed
  `memcpy` experiment (see section 6). Commit it.
- `HEAD` is `8aa5c5a`, whose synthesis report measured the *regressed* memcpy version.
  **The report currently at `canny_hls/canny_top/reports/hls_compile.rpt` is therefore
  stale** — it shows 1,120,549, not 851,709.

Commit history for this work:

| Commit | What |
|---|---|
| `f2c650c` | baseline, before any optimisation |
| `bb0f2fa` | the four-stage optimisation (section 4) |
| `2dc556d` | synthesis report for the above — **851,709, the good result** |
| `f14ec43` | grayscale attempt 1 — build error |
| `c95619c` | grayscale attempt 2 — no change |
| `c42a059` / `8aa5c5a` | grayscale attempt 3 — 32% regression, reverted |

---

## 3. Why the original was slow

Every windowed stage kept its line buffer as a plain 2D array, e.g.
`uint8_t lineBuffer[5][WIDTH]`, and re-read it once per kernel tap per output pixel.

A BRAM is dual-port: **two reads per cycle, maximum.** So the initiation interval was
forced to roughly `ceil(reads per pixel / 2)`:

| Stage | Reads per output pixel | Resulting II |
|---|---|---|
| gaussian_blur | 25 (5x5 kernel) | 13 |
| hysteresis | 9 (8 neighbours + centre) | 5 |
| sobel | 9 (3x3 kernel) | 4 |
| non_maximum_suppression | 3 | 2 |

The synthesis report flagged all of these as `II | Resource Limitation`. The resource in
question was BRAM ports.

Because the stages run concurrently inside `#pragma HLS DATAFLOW`, **the frame time is set
by the slowest stage, not the sum.** Gaussian at 7281 cycles/row was therefore setting the
entire frame rate: 520 rows x 7282 = 3.79M cycles.

---

## 4. What was changed

Four techniques, applied across `gaussian_blur.cpp`, `sobel.cpp`,
`non_maximum_suppression.cpp` and `hysteresis.cpp`. No files added or removed, no
signatures changed, no changes to `config.h`, the testbenches, or any build config.

### 4.1 Sliding register windows

Instead of re-reading the line buffer for every kernel tap, each stage keeps the
neighbourhood in registers and slides it one column per iteration, reading only the single
new column from memory.

```cpp
uint8_t window[3][3];
#pragma HLS ARRAY_PARTITION variable=window type=complete dim=0
// ... per column: compute from window, shift left, load one new column
```

This is what takes reads-per-pixel from 25/9/9/3 down to one column's worth.

### 4.2 Line-buffer partitioning

```cpp
#pragma HLS ARRAY_PARTITION variable=lineBuffer type=complete dim=1
```

Splits a `[K][WIDTH]` buffer into K independent memory banks so all K rows can be read in
the same cycle. Confirmed applied in the synthesis log for every stage.

**Pattern used throughout:** row slots are dynamic (they rotate as rows arrive) and can
repeat at reflected/replicated image borders. Two reads naming the same bank would
serialise. So every bank is read once at a *fixed* index into a small register array, and
the slot selection happens in registers:

```cpp
uint8_t banked[K];
#pragma HLS ARRAY_PARTITION variable=banked type=complete
for (int bank = 0; bank < K; ++bank) {
    #pragma HLS UNROLL
    banked[bank] = lineBuffer[bank][nextColumn];   // fixed bank index
}
// ... then select banked[slot[row]] — a register mux, not a memory access
```

### 4.3 Separable Gaussian

The 5x5 binomial kernel is the outer product of `{1,4,6,4,1}` with itself, divided by 256.
It is now applied as a horizontal pass on the way *into* the line buffer and a vertical
pass on the way *out* — 5+5 taps instead of 25.

**Bit-exactness:** the horizontal result is stored at full precision (`uint16`, max
255x16 = 4080) and the single `>> 8` happens only after the vertical pass. Because
`sum(kr) sum(kc) K[kr]K[kc]p == sum(kr) K[kr] * (sum(kc) K[kc]p)` exactly in integer
arithmetic, the output is identical to the original 2D convolution. Do **not** shift twice
(once per pass) — that changes rounding and breaks `test_gaussian`.

The line buffer for this stage is now `uint16` rather than `uint8`, which is most of the
BRAM increase. HLS narrowed it to 12 bits wide in the final report.

### 4.4 Hoisting the index arithmetic

`positive_modulo()` and `reflect_101()` were being evaluated **once per tap per pixel** —
five modulo operations per pixel in Gaussian. The source rows are constant for a whole
output row, so these now run once per row, outside the column loop:

```cpp
int slot[KERNEL_SIZE];
#pragma HLS ARRAY_PARTITION variable=slot type=complete
for (int tap = 0; tap < KERNEL_SIZE; ++tap) {
    #pragma HLS UNROLL
    slot[tap] = positive_modulo(reflect_101(rowsReceived - 5 + tap, HEIGHT), KERNEL_SIZE);
}
```

Modulo by a non-power-of-two is expensive in hardware. **This is where the LUT and FF
savings came from** — the design got smaller as well as faster.

### 4.5 Dead code removed

Each stage had a `for` loop writing `output[column] = 0` that was unconditionally
overwritten later. Safe to remove: the testbenches only read `output` when `valid` is
true, and the pre-existing early-return paths already left `output` unwritten on invalid
rows.

### 4.6 One thing worth knowing about `hysteresis.cpp`

The line buffer there is a **variable template** (`lineBuffer<Instance>`), because each of
the four chained instances needs its own state. The pragma parser cannot handle a template
argument list, so `#pragma HLS ARRAY_PARTITION variable=lineBuffer<Instance>` will not
work. The workaround is to bind a plain-named reference first:

```cpp
auto &buffer = lineBuffer<Instance>;
#pragma HLS ARRAY_PARTITION variable=buffer type=complete dim=1
```

**This was verified to work** — the synthesis log shows
`Applying array_partition to '_ZN12_GLOBAL__N_110lineBufferILi1EEE': Complete
partitioning on dimension 1` for all four instances.

### Per-stage results

| Stage | II before | II after | cycles/row before | after |
|---|---|---|---|---|
| gaussian_blur | 13 | **1** | 7281 | 1103 |
| hysteresis x4 | 5 | **1** | 3152 | 1101 |
| sobel | 4 | **1** | 2640 | 1102 |
| non_maximum_suppression | 2 | **1** | 1614 | 1101 |
| grayscale | 3 | 3 | 1615 | 1615 |
| double_threshold | 1 | 1 | 516 | 516 |
| output_row | 1 | 1 | 586 | 586 |

Dataflow interval: **7282 -> 1616**. Grayscale is now the bottleneck.

---

## 5. Mapping to standard optimisation techniques

The same work, expressed in the standard HLS optimisation taxonomy, with the evidence for
each. Useful for reporting; the mechanics are in section 4.

| Technique | Used | Where |
|---|---|---|
| Code hoisting (loop-invariant code motion) | yes, heavily | section 4.4 |
| Loop fission | yes | section 4.3 |
| Loop unrolling | yes, heavily | all tap and bank-read loops |
| Loop pipelining | yes — the central metric | every column loop |
| Resource mapping | yes | array partitioning, bitwidth narrowing, operator binding |
| Data reuse / windowing | yes — largest single win | section 4.1 |
| Algebraic transformation | yes | separable Gaussian, section 4.3 |
| Dead code elimination | yes | section 4.5 |
| Function inlining | yes, automatic | HLS inlined all helpers |
| Task-level parallelism | pre-existing | `DATAFLOW` in `canny_top.cpp` |
| **Loop fusion** | **no** | the main remaining win — section 7A |
| Loop unrolling for pixel parallelism | no | only needed above 512x512 — section 7C |
| Array reshaping | no | partitioning was used instead |
| Interface / burst optimisation | attempted, failed | section 6 |

### Code hoisting

`positive_modulo()` and `reflect_101()` were evaluated once per tap per pixel — five
modulo operations per pixel in Gaussian. The source rows are constant across an output
row, so they were hoisted out of the column loop.

**This is the most cleanly attributable result in the whole exercise**, because it is
isolated to one stage:

| gaussian_blur | Before | After |
|---|---|---|
| FF | 11,002 | **2,797** (-75%) |
| LUT | 10,500 | **3,669** (-65%) |

Modulo by a non-power-of-two synthesises to a real divider. Removing five per pixel is why
the whole design got *smaller* (LUT -17%, FF -29%) while getting 4.47x faster. The other
three stages stayed roughly flat on resources — essentially all the savings came from
here.

### Loop fission

Gaussian originally had one column loop containing a 5x5 nested tap loop. It is now two
column loops over the same iteration space: a horizontal pass and a vertical pass. What
made the split legal was the algebraic transformation (separability).

**Note the tension with section 7A:** the largest remaining optimisation is loop *fusion*
— merging each stage's buffer-write loop with its compute loop. These are different loops
(the fission was within Gaussian's filtering; the fusion opportunity is between store and
compute), but be precise about that distinction in any writeup, or "we applied fission and
now want fusion" will read as contradictory.

### Loop unrolling

Every inner tap loop and bank-read loop is fully unrolled. From the synthesis log:

```
Unrolling loop 'VITIS_LOOP_136_7' (gaussian_blur.cpp:136) completely with a factor of 5
Unrolling loop 'VITIS_LOOP_90_4'  (gaussian_blur.cpp:90)  completely with a factor of 4
Unrolling loop 'VITIS_LOOP_161_6' (sobel.cpp:161)         completely with a factor of 3
Unrolling loop 'VITIS_LOOP_189_5' (hysteresis.cpp:189)    completely with a factor of 3
```

Factor 5 = the Gaussian taps, factor 4 = the window shift, factor 3 = the 3x3 rows. The
purpose here is not raw parallelism but collapsing the tap arithmetic into a single-cycle
combinational tree of registers, which is a precondition for II=1.

### Loop pipelining

`#pragma HLS PIPELINE II=1` on every column loop. This is the metric the whole exercise
was measured by — see the per-stage table at the end of section 4.

**The pragma alone does nothing.** HLS was *already* auto-pipelining these loops in the
baseline (via `syn.compile.pipeline_loops=64`) and still could not get below II=13; it
reported `II | Resource Limitation`. Asking for II=1 only works once the resource conflict
is gone. That is the whole shape of this optimisation: **pipelining was the goal, windowing
and partitioning were the enablers.**

### Resource mapping

Three distinct forms:

**Array partitioning** — how logical arrays map to physical memories. Confirmed in the log
for every stage:

```
Applying array_partition to '_ZN12_GLOBAL__N_110lineBufferILi1EEE': Complete partitioning on dimension 1
Applying array_partition to lineBuffer.magnitude / lineBuffer.direction   (NMS)
```

**Bitwidth narrowing** — automatic, but enabled by choosing types deliberately (`uint16`
rather than `uint32` for the Gaussian buffer). The memory table shows HLS sized each
buffer to its actual value range:

| Buffer | Declared | Implemented |
|---|---|---|
| Gaussian line buffer | `uint16` | 12 bits (max value 4080) |
| NMS magnitude | `uint16` | 11 bits |
| NMS direction | enum | 2 bits |

Note that NMS's `GradientPixel` was automatically split into two separate memories,
magnitude and direction, each sized independently.

**Operator binding** — 4 DSPs total, 2 in grayscale and 2 in sobel. The `{1,4,6,4,1}`
multiplies were bound to LUT shift-adds rather than DSPs, which is the correct mapping for
small constant coefficients.

---

## 6. The grayscale II violation — investigated and closed

**Status: still present (II=3). Do not spend more time on it without changing the pixel
type. Three approaches were tried and all failed.**

### The problem

`RGBPixel` is a **3-byte** struct. Consecutive pixels therefore sit at 3-byte offsets, so
only the first is aligned to more than one byte. The AXI master port is 512 bits wide, and
HLS cannot widen 3-byte-strided accesses to fill it. Every attempt produced the same
diagnosis in the report's *M_AXI Burst Information* section:

```
Widen Fail | Could not widen since type i8 size is greater than or equal to alignment 1(bytes)
Fail       | Inferred burst reverted due to burst accesses data width is different from m_axi port width
Inferred   | Length 1536        (= 512 pixels x 3 bytes, one beat per byte)
```

### What was tried

| # | Approach | Result |
|---|---|---|
| 1 | Read whole struct in one statement (`const RGBPixel pixel = input[column];`) + `#pragma HLS AGGREGATE variable=in compact=byte` | **Build error.** `[HLS 214-288] Cannot apply compact=byte mode on MAXI port 'in', and the aggregate compact option on MAXI can only be 'none'` |
| 2 | Same, with `compact=none` | **Synthesised, no change.** Still 851,709. The burst table collapsed from three access locations to one, so the source change did take effect — but the widening diagnosis was identical. `AGGREGATE` bought nothing. |
| 3 | `memcpy` the row into a local `RGBPixel local[WIDTH]`, then compute from local BRAM | **32% regression.** 851,709 -> 1,120,549. The copy still took ~1610 cycles (the tool treats it as an i8 copy, same alignment limit), and a 518-cycle compute loop was added on top. Grayscale went 1615 -> 2132 cycles, BRAM 66 -> 69. Reverted. |

The reasoning behind attempt 3 was that a flat contiguous 1536-byte copy from a 64-byte
aligned base should widen where a 3-byte stride cannot. **This was wrong:** HLS decides
widening from the *element type* (`i8`, alignment 1), not from the base address.

### The only remaining fix

Pad `RGBPixel` to **4 bytes**, so the stride divides evenly into 64. This would work, but
it changes the kernel's data contract and requires host-side changes:

- `canny_types.h` — add a fourth padding byte to `RGBPixel`
- `canny_host/host.cpp` — `xrt::bo(device, WIDTH*HEIGHT*4, ...)` and `CV_8UC4`
- capture path — a `cvtColor(..., COLOR_BGR2BGRA)` or equivalent

Roughly 15 minutes of work, but it must be agreed with whoever owns host integration.

### Is it safe to ship with the violation?

**Yes.** An II violation is not a correctness error — it means HLS could not reach its
target initiation interval and is reporting the constraint that stopped it. The design
synthesises, builds, and runs correctly. Grayscale was **already at II=3 in the original
baseline**, including the version that ran successfully on the board at commit `b025696`.

The entire cost is throughput: grayscale takes 1615 cycles/row instead of ~591, and since
the dataflow interval is the slowest stage, that is what sets the frame rate. Fixing it
would give roughly **1.46x** (4.26 ms -> ~2.9 ms). Nothing else is affected.

---

## 7. What is left

Ranked by value. None of this is required — the current result is complete and verified.

### A. Merge the store and compute loops — approx 1.8x, no host impact

**The largest remaining win.** Every optimised stage now runs *two* sequential passes over
each row:

```
for c:  buffer[writeSlot][c] = input[c];   // ~514 cycles
for c:  compute from window;                // ~515 cycles
                                            // ~1101 total, floor is ~520
```

They are separate because the compute needs the row that was just stored — the bottom row
of the window is the newest one. To merge, software-pipeline them with a skew: store
column `c` and compute the output for column `c-1` in the same iteration (`c-2` for
Gaussian's 5-tap window), so the write always runs one step ahead of the read that needs
it. One loop of ~WIDTH+2 iterations instead of two of WIDTH.

Expected: each stage ~1101 -> ~520. Combined with a grayscale fix, interval ~600, giving
roughly 1.56 ms (~640 fps kernel estimate).

Risk: moderate. Off-by-one in the skew is the classic failure mode, but the testbenches
catch it bit-exactly in 6 seconds.

### B. Grayscale AXI widening — approx 1.46x, needs host agreement

See section 6. Only viable via the 4-byte pixel change.

### C. Pixel-parallel unrolling — 2-4x, only if resolution increases

Process N pixels per cycle: cyclic-partition the line buffers by N and instantiate N
copies of the compute logic. Interval divides by N; LUT and BRAM scale up roughly with N.
Pointless at 512x512, where the design is already far past real time. This is the lever if
the project ever targets 1080p.

### D. Raising the clock — evaluated and rejected

Tempting (one line: `clock=200MHz` in `canny_hls/hls_config.cfg`), but the report says no.
`grayscale`, `sobel`, `output_row` and `canny_top` all report **0.00 ns slack** — exactly
meeting 200 MHz with nothing spare. Pushing to 250 MHz would require inserting extra
pipeline stages first.

### Not worth doing

**Merging the four hysteresis passes.** They run concurrently in the dataflow region, so
collapsing them would save BRAM and LUT but **not a single cycle** of frame time.

---

## 8. How to work on this

### Three tiers, and what each one can tell you

| Tier | Command | Time | Tells you | Needs |
|---|---|---|---|---|
| C simulation | `bash scripts/run_all_tests.sh` | ~6 s | correctness only | just g++ |
| C synthesis | `v++ -c --mode hls ...` | ~5 min | II, latency, resources | Vitis, **no board** |
| Bitstream + board | full build | hours | real end-to-end fps | Vitis + KV260 |

**C simulation cannot tell you anything about speed.** `g++` ignores every `#pragma HLS` —
that is exactly why `scripts/run_all_tests.sh` passes `-Wno-unknown-pragmas`. II, pipelining
and BRAM banking are properties of the synthesised circuit, which does not exist until
`v++` runs. Do not try to time the g++ build either: the window rewrites make the *CPU*
version slower while making the hardware dramatically faster.

**Vitis is Linux/Windows x86 only.** If you are on macOS you cannot synthesise locally and
will need a lab machine or a teammate for every tier-2 check. Plan for that: batch several
changes per synthesis run, and keep commits small and single-purpose so that when an II
does not move you know which change owns it.

### The verification loop

1. Make **one** change.
2. `bash scripts/run_all_tests.sh` — must stay at **zero mismatches** on all tests.
3. Commit.
4. Batch a few commits, then run C synthesis and check the II column moved.

The testbenches compare each streaming stage against a whole-image reference
implementation in `testbench/*_reference.cpp` and demand exact equality, including the
`valid` signal timing. They are a strong safety net for exactly this kind of rewrite —
border handling and rounding slips are caught immediately.

### Running C synthesis

```
cd canny_hls
v++ -c --mode hls --config hls_config.cfg --work_dir canny_top
```

Report lands at `canny_hls/canny_top/reports/hls_compile.rpt`, which **is tracked in git**
— commit it so the numbers travel with the code.

Optionally also run the testbenches under the Vitis toolchain rather than the local
compiler:

```
vitis-run --mode hls --csim --config hls_config.cfg --work_dir canny_top
```

### Reading the report

- **`+ canny_top` row, Interval column** — cycles per frame. This is the headline number.
- **`o VITIS_LOOP_*` rows, Interval column** — the II of each loop. Want 1.
- **"Violation Type" column** — `Resource Limitation` means a port/memory limit;
  `Dependence` means a loop-carried dependency. Blank is what you want.
- **M_AXI Burst Information section** — burst widening successes and failures, with the
  source line and the reason. This is where the grayscale problem is diagnosed.
- **`dataflow_in_loop_...` Interval** — equals the slowest stage, since the stages run
  concurrently. This is what actually sets the frame rate.

### Useful arithmetic

```
II  ~=  ceil( BRAM reads per output pixel / (2 ports x number of partitions) )

frame cycles  ~=  (HEIGHT + 8) x (interval of slowest stage)
frame time    =   frame cycles / 200 MHz
```

The first one lets you predict the II of a design change without running the tool, which
matters a lot when synthesis is a slow round-trip. It predicted 25 taps -> II=13 and
9 taps -> II=5 correctly against the baseline report.

---

## 9. Gotchas

- **`reset_canny_stages()` must run per frame.** Every stage keeps `static`/global row
  state; without the reset, frame N+1 starts with frame N's line buffers.
- **Row latency is part of the contract.** Each stage delays output by a fixed number of
  rows and signals it via `valid_out`. The testbenches check this timing explicitly
  ("Valid-timing failures"). Do not change when a stage first asserts `valid`.
- **The `HEIGHT+8` loop bound** in `canny_top.cpp` drains the accumulated pipeline latency
  after the last real row. If you add or remove a stage, this needs updating.
- **Border handling deliberately mirrors OpenCV** — `reflect_101` in Gaussian,
  `border_replicate` in Sobel, L1 (`|Gx|+|Gy|`) gradient magnitude. This is what makes the
  bit-exact comparison against the references possible. Do not "fix" it.
- **`#pragma HLS` on a global array** goes inside the function that uses it, not at
  namespace scope.

---

## 10. Open items beyond HLS

Flagged for completeness, since they affect how the optimisation gets reported:

- **`canny_host/host.cpp` still only runs the OpenCV path.** `main()` instantiates
  `CannyCV`, never `CannyFPGA`, and the webcam capture loop is commented out. So there is
  currently no measured on-board fps and no live-input demonstration.
- **No end-to-end benchmark against `cv::Canny` on the PS exists yet.** The project brief
  asks for this comparison explicitly (fps, per-frame latency, LUT/FF/BRAM/DSP). The
  resource numbers are available from the synthesis report; the timing numbers are not.
- **Host transfers are not overlapped with compute.** `sync(TO_DEVICE)` -> `run.wait()` ->
  `sync(FROM_DEVICE)` are fully serialised, with no double buffering. At 4.26 ms of kernel
  time, transfer overhead is now a significant fraction of the frame budget and may
  dominate end-to-end throughput.
