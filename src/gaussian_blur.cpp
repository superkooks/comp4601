#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int KERNEL_SIZE = 5;
constexpr int HALF_KERNEL = 2;

// The 5x5 binomial Gaussian is separable. Each stored row contains the
// horizontal [1 4 6 4 1] result, reducing 25 taps per pixel to 10 taps.
std::uint16_t horizontalBuffer[KERNEL_SIZE][WIDTH] = {};
int rowsReceived = 0;

int wrap5(int value) {
    int wrapped = value % KERNEL_SIZE;
    return wrapped < 0 ? wrapped + KERNEL_SIZE : wrapped;
}

int reflect_101(int value, int limit) {
    if (value < 0) {
        return -value;
    }

    if (value >= limit) {
        return 2 * limit - value - 2;
    }

    return value;
}

std::uint16_t horizontal_filter_pixel(
    const std::uint8_t input[WIDTH],
    int column
) {
#pragma HLS INLINE
    const int columnMinusTwo =
        column == 0 ? 2 : (column == 1 ? 1 : column - 2);

    const int columnMinusOne =
        column == 0 ? 1 : column - 1;

    const int columnPlusOne =
        column == WIDTH - 1 ? WIDTH - 2 : column + 1;

    const int columnPlusTwo =
        column == WIDTH - 1
            ? WIDTH - 3
            : (column == WIDTH - 2 ? WIDTH - 2 : column + 2);

    const std::uint16_t minusTwo = input[columnMinusTwo];
    const std::uint16_t minusOne = input[columnMinusOne];
    const std::uint16_t centre = input[column];
    const std::uint16_t plusOne = input[columnPlusOne];
    const std::uint16_t plusTwo = input[columnPlusTwo];

    return static_cast<std::uint16_t>(
        minusTwo +
        (minusOne << 2) +
        ((centre << 2) + (centre << 1)) +
        (plusOne << 2) +
        plusTwo
    );
}

}

void gaussian_blur_reset() {
#pragma HLS ARRAY_PARTITION variable=horizontalBuffer complete dim=1
    rowsReceived = 0;

    for (int row = 0; row < KERNEL_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
            horizontalBuffer[row][column] = 0;
        }
    }
}

void gaussian_blur(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool *valid_out
) {
#pragma HLS ARRAY_PARTITION variable=horizontalBuffer complete dim=1
    const int writeSlot = wrap5(rowsReceived);

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        horizontalBuffer[writeSlot][column] =
            horizontal_filter_pixel(input, column);
        output[column] = 0;
    }

    ++rowsReceived;

    const int outputRow = rowsReceived - HALF_KERNEL - 1;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    // Resolve the five source rows once per row. No modulo or border
    // calculations remain in the performance-critical pixel loop.
    const int sourceRow0 = reflect_101(rowsReceived - 5, HEIGHT);
    const int sourceRow1 = reflect_101(rowsReceived - 4, HEIGHT);
    const int sourceRow2 = reflect_101(rowsReceived - 3, HEIGHT);
    const int sourceRow3 = reflect_101(rowsReceived - 2, HEIGHT);
    const int sourceRow4 = reflect_101(rowsReceived - 1, HEIGHT);

    const int slot0 = wrap5(sourceRow0);
    const int slot1 = wrap5(sourceRow1);
    const int slot2 = wrap5(sourceRow2);
    const int slot3 = wrap5(sourceRow3);
    const int slot4 = wrap5(sourceRow4);

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        const std::uint32_t value0 = horizontalBuffer[slot0][column];
        const std::uint32_t value1 = horizontalBuffer[slot1][column];
        const std::uint32_t value2 = horizontalBuffer[slot2][column];
        const std::uint32_t value3 = horizontalBuffer[slot3][column];
        const std::uint32_t value4 = horizontalBuffer[slot4][column];

        const std::uint32_t sum =
            value0 +
            (value1 << 2) +
            ((value2 << 2) + (value2 << 1)) +
            (value3 << 2) +
            value4;

        output[column] = static_cast<std::uint8_t>(sum >> 8);
    }

    *valid_out = true;
}
