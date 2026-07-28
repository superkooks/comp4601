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

/*
 * Horizontally filtered rows.  The largest possible value is 255 * 16, so
 * 16 bits per entry is enough.  One row per memory bank, so the vertical pass
 * can read all five taps in the same cycle.
 */
std::uint16_t lineBuffer[KERNEL_SIZE][WIDTH] = {};
int rowsReceived = 0;

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

void gaussian_blur_reset() {
    rowsReceived = 0;

    for (int row = 0; row < KERNEL_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            lineBuffer[row][column] = 0;
        }
    }
}

void gaussian_blur(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool *valid_out
) {
    #pragma HLS ARRAY_PARTITION variable=lineBuffer type=complete dim=1

    const int writeSlot =
        rowsReceived % KERNEL_SIZE;

    /*
     * Horizontal pass.  A shift register holds the five taps, so each input
     * pixel is fetched exactly once instead of once per tap.
     */
    std::uint8_t window[KERNEL_SIZE];
    #pragma HLS ARRAY_PARTITION variable=window type=complete

    for (int tap = 0; tap < KERNEL_SIZE; ++tap) {
        #pragma HLS UNROLL
        window[tap] = input[reflect_101(tap - 2, WIDTH)];
    }

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

        for (int tap = 0; tap < KERNEL_SIZE - 1; ++tap) {
            #pragma HLS UNROLL
            window[tap] = window[tap + 1];
        }

        window[KERNEL_SIZE - 1] =
            input[reflect_101(column + 3, WIDTH)];
    }

    ++rowsReceived;

    const int outputRow = rowsReceived - 3;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    /*
     * The five source rows are fixed for the whole output row, so resolve
     * their buffer slots once rather than once per pixel.  This removes the
     * per tap modulo that dominated the original loop.
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
         * Reflected rows can name the same slot twice, which would otherwise
         * serialise two reads onto a single memory port.
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

        output[column] =
            static_cast<std::uint8_t>(sum >> 8);
    }

    *valid_out = true;
}
