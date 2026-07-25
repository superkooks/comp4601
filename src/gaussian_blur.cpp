#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int KERNEL_SIZE = 5;

constexpr int GAUSSIAN_KERNEL[KERNEL_SIZE][KERNEL_SIZE] = {
    {1,  4,  6,  4, 1},
    {4, 16, 24, 16, 4},
    {6, 24, 36, 24, 6},
    {4, 16, 24, 16, 4},
    {1,  4,  6,  4, 1}
};

std::uint8_t lineBuffer[KERNEL_SIZE][WIDTH] = {};
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
    const int writeSlot =
        rowsReceived % KERNEL_SIZE;

    // Store the newest input row.
    for (int column = 0; column < WIDTH; ++column) {
        lineBuffer[writeSlot][column] = input[column];
        output[column] = 0;
    }
    ++rowsReceived;

    const int outputRow = rowsReceived - 3;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    for (int column = 0; column < WIDTH; ++column) {
        std::uint32_t sum = 0;

        for (int kernelRow = 0;
             kernelRow < KERNEL_SIZE;
             ++kernelRow) {
                
            const int absoluteSourceRow =
                reflect_101(rowsReceived - 5 + kernelRow, HEIGHT);

            const int bufferSlot =
                positive_modulo(
                    absoluteSourceRow,
                    KERNEL_SIZE
                );

            for (int kernelColumn = 0;
                 kernelColumn < KERNEL_SIZE;
                 ++kernelColumn) {

                const int sourceColumn =
                    reflect_101(column + kernelColumn - 2, WIDTH);

                sum +=
                    static_cast<std::uint32_t>(
                        lineBuffer[bufferSlot][sourceColumn]
                    ) *
                    GAUSSIAN_KERNEL[kernelRow][kernelColumn];
            }
        }

        output[column] =
            static_cast<std::uint8_t>(sum >> 8);
    }

    *valid_out = true;
}
