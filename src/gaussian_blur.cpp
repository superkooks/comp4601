#include <cstdint>

#include "canny_stages.h"

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

    /*
     * When the newest received row is r, the output belongs
     * to row r - 2.
     */
    const int outputRow = rowsReceived - 3;

    // Preserve zero-valued top and bottom borders.
    if (outputRow < 2 || outputRow >= HEIGHT - 2) {
        *valid_out = false;
        return;
    }

    for (int column = 2; column < WIDTH - 2; ++column) {
        std::uint32_t sum = 0;

        for (int kernelRow = 0;
             kernelRow < KERNEL_SIZE;
             ++kernelRow) {

            /*
             * The five rows needed are:
             * rowsReceived - 4 through rowsReceived.
             */
            const int absoluteSourceRow =
                rowsReceived - 4 + kernelRow;

            const int bufferSlot =
                positive_modulo(
                    absoluteSourceRow,
                    KERNEL_SIZE
                );

            for (int kernelColumn = 0;
                 kernelColumn < KERNEL_SIZE;
                 ++kernelColumn) {

                const int sourceColumn =
                    column + kernelColumn - 2;

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
