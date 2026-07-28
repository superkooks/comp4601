#include <cstdint>
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

int reflect_101(int value, int limit) {
    if (value < 0) {
        return -value;
    }

    if (value >= limit) {
        return 2 * limit - value - 2;
    }

    return value;
}

}

void gaussian_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            std::uint32_t sum = 0;

            for (int kernelRow = 0; kernelRow < KERNEL_SIZE; ++kernelRow) {
                const int sourceRow =
                    reflect_101(row + kernelRow - 2, HEIGHT);

                for (int kernelColumn = 0;
                     kernelColumn < KERNEL_SIZE;
                     ++kernelColumn) {
                    const int sourceColumn =
                        reflect_101(column + kernelColumn - 2, WIDTH);

                    sum +=
                        static_cast<std::uint32_t>(
                            input[sourceRow * WIDTH + sourceColumn]
                        ) *
                        GAUSSIAN_KERNEL[kernelRow][kernelColumn];
                }
            }

            output[row * WIDTH + column] =
                static_cast<std::uint8_t>(sum >> 8);
        }
    }
}
