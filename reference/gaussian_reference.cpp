#include "gaussian_reference.h"

namespace {

constexpr int KERNEL_SIZE = 5;

constexpr int GAUSSIAN_KERNEL[KERNEL_SIZE][KERNEL_SIZE] = {
    {1,  4,  6,  4, 1},
    {4, 16, 24, 16, 4},
    {6, 24, 36, 24, 6},
    {4, 16, 24, 16, 4},
    {1,  4,  6,  4, 1}
};

}

void gaussian_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int outputIndex = row * WIDTH + column;

            // Zero padding at image boundaries.
            if (
                row < 2 ||
                row >= HEIGHT - 2 ||
                column < 2 ||
                column >= WIDTH - 2
            ) {
                output[outputIndex] = 0;
                continue;
            }

            std::uint32_t sum = 0;

            for (int kernelRow = 0;
                 kernelRow < KERNEL_SIZE;
                 ++kernelRow) {

                for (int kernelColumn = 0;
                     kernelColumn < KERNEL_SIZE;
                     ++kernelColumn) {

                    const int sourceRow =
                        row + kernelRow - 2;

                    const int sourceColumn =
                        column + kernelColumn - 2;

                    sum +=
                        static_cast<std::uint32_t>(
                            input[sourceRow * WIDTH + sourceColumn]
                        ) *
                        GAUSSIAN_KERNEL[kernelRow][kernelColumn];
                }
            }

            // Kernel coefficients add to 256.
            output[outputIndex] =
                static_cast<std::uint8_t>(sum >> 8);
        }
    }
}
