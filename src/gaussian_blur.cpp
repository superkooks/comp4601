#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int KERNEL_SIZE = 5;

/*
 * The 5x5 binomial kernel is separable: it is the outer product of
 * {1, 4, 6, 4, 1} with itself, divided by 256.  Filtering horizontally on the
 * way into the line buffer and vertically on the way out costs 5 + 5 taps per
 * pixel instead of 25.  Full precision is kept until the single final shift,
 * so the result is bit identical to the original 2D convolution.
 */
constexpr int GAUSSIAN_TAPS[KERNEL_SIZE] = {1, 4, 6, 4, 1};

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

int reflect_101(int v, int max) {
    if (v < 0) {
        return -v;
    } else if (v >= max) {
        return -(v - max) - 2 + max;
    } else {
        return v;
    }
}

}

void gaussian_blur(
    hls::stream<std::uint8_t> &input,
    hls::stream<std::uint8_t> &output
) {
    // Gaussian blur needs three rows of input before it can output its first row.
    // Therefore, once the input runs out, we still need to output two extra rows,
    // which the kernel will derive from reflected input (reflect_101)
    constexpr int OWN_DELAY = 2;
    constexpr int TOTAL_ROWS = HEIGHT + OWN_DELAY;

    /*
     * Horizontally filtered rows.  The largest possible value is 255 * 16, so
     * 16 bits per entry is enough.  One row per memory bank, so the vertical
     * pass can read all five taps in the same cycle.  This used to be
     * anonymous-namespace static state shared across HEIGHT+8 separate calls;
     * now the whole frame is processed by one call, so it is an ordinary
     * local that lives for the duration of that call.
     */
    std::uint16_t lineBuffer[KERNEL_SIZE][WIDTH];
    #pragma HLS ARRAY_PARTITION variable=lineBuffer type=complete dim=1

    int rowsReceived = 0;

    for (int row = 0; row < TOTAL_ROWS; ++row) {
        if (row < HEIGHT) {
            const int writeSlot = rowsReceived % KERNEL_SIZE;

            /*
             * Streaming horizontal pass: a 5-tap shift register slides across
             * the row as samples arrive directly from the input stream, so
             * the whole row never needs to be buffered first -- this used to
             * be two separate WIDTH-long loops (read row, then filter row),
             * now it is one. `history` keeps the last few samples actually
             * read purely to satisfy reflect_101 at the far edge of the row,
             * where the last two output columns look back at samples already
             * seen instead of reading anything new.
             */
            std::uint8_t window[KERNEL_SIZE];
            #pragma HLS ARRAY_PARTITION variable=window type=complete

            std::uint8_t history[KERNEL_SIZE - 1];
            #pragma HLS ARRAY_PARTITION variable=history type=complete

            const std::uint8_t sample0 = input.read();
            const std::uint8_t sample1 = input.read();
            const std::uint8_t sample2 = input.read();

            window[0] = sample2;
            window[1] = sample1;
            window[2] = sample0;
            window[3] = sample1;
            window[4] = sample2;

            history[0] = sample0;
            history[1] = sample0;
            history[2] = sample1;
            history[3] = sample2;

            for (int column = 0; column < WIDTH; ++column) {
                #pragma HLS PIPELINE II=1

                int horizontalSum = 0;

                for (int tap = 0; tap < KERNEL_SIZE; ++tap) {
                    #pragma HLS UNROLL
                    horizontalSum +=
                        static_cast<int>(window[tap]) * GAUSSIAN_TAPS[tap];
                }

                lineBuffer[writeSlot][column] =
                    static_cast<std::uint16_t>(horizontalSum);

                std::uint8_t nextSample;

                if (column + 3 < WIDTH) {
                    nextSample = input.read();

                    for (int tap = 0; tap < KERNEL_SIZE - 2; ++tap) {
                        #pragma HLS UNROLL
                        history[tap] = history[tap + 1];
                    }
                    history[KERNEL_SIZE - 2] = nextSample;
                } else {
                    // Last two columns: reflect back into samples already
                    // read, held in `history` since the row itself is gone.
                    nextSample = history[WIDTH - 1 - column];
                }

                for (int tap = 0; tap < KERNEL_SIZE - 1; ++tap) {
                    #pragma HLS UNROLL
                    window[tap] = window[tap + 1];
                }

                window[KERNEL_SIZE - 1] = nextSample;
            }
        }

        ++rowsReceived;

        const int outputRow = rowsReceived - 3;

        if (outputRow < 0) {
            continue;
        }

        /*
         * The five source rows are fixed for the whole output row, so
         * resolve their buffer slots once rather than once per pixel.
         */
        int slot[KERNEL_SIZE];
        #pragma HLS ARRAY_PARTITION variable=slot type=complete

        for (int tap = 0; tap < KERNEL_SIZE; ++tap) {
            #pragma HLS UNROLL
            slot[tap] =
                positive_modulo(
                    reflect_101(rowsReceived - 5 + tap, HEIGHT),
                    KERNEL_SIZE
                );
        }

        for (int column = 0; column < WIDTH; ++column) {
            #pragma HLS PIPELINE II=1

            /*
             * Read every bank once at a fixed index and select in registers.
             * Reflected rows can name the same slot twice, which would
             * otherwise serialise two reads onto a single memory port.
             */
            std::uint16_t banked[KERNEL_SIZE];
            #pragma HLS ARRAY_PARTITION variable=banked type=complete

            for (int bank = 0; bank < KERNEL_SIZE; ++bank) {
                #pragma HLS UNROLL
                banked[bank] = lineBuffer[bank][column];
            }

            std::uint32_t sum = 0;

            for (int tap = 0; tap < KERNEL_SIZE; ++tap) {
                #pragma HLS UNROLL
                sum +=
                    static_cast<std::uint32_t>(banked[slot[tap]]) *
                    static_cast<std::uint32_t>(GAUSSIAN_TAPS[tap]);
            }

            output.write(static_cast<std::uint8_t>(sum >> 8));
        }
    }
}
