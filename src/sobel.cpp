#include <cmath>
#include <cstdint>

#include "canny_stages.h"

namespace {

constexpr int KERNEL_SIZE = 3;

constexpr int SOBEL_X[KERNEL_SIZE][KERNEL_SIZE] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

constexpr int SOBEL_Y[KERNEL_SIZE][KERNEL_SIZE] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

std::uint8_t lineBuffer[KERNEL_SIZE][WIDTH] = {};
int rowsReceived = 0;

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

int absolute_value(int value) {
    return value < 0 ? -value : value;
}

GradientDirection quantise_direction(
    int gradientX,
    int gradientY
) {
    const int absoluteX = absolute_value(gradientX);
    const int absoluteY = absolute_value(gradientY);

    if (absoluteX == 0 && absoluteY == 0) {
        return GradientDirection::DEG_0;
    }

    if (absoluteY * 1000 <= absoluteX * 414) {
        return GradientDirection::DEG_0;
    }

    if (absoluteY * 1000 >= absoluteX * 2414) {
        return GradientDirection::DEG_90;
    }

    if (
        (gradientX >= 0 && gradientY >= 0) ||
        (gradientX < 0 && gradientY < 0)
    ) {
        return GradientDirection::DEG_45;
    }

    return GradientDirection::DEG_135;
}

}

void sobel_reset() {
    rowsReceived = 0;

    for (int row = 0; row < KERNEL_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            lineBuffer[row][column] = 0;
        }
    }
}

void sobel(
    const std::uint8_t input[WIDTH],
    GradientPixel output[WIDTH]
) {
    const int writeSlot =
        rowsReceived % KERNEL_SIZE;

    for (int column = 0; column < WIDTH; ++column) {
        lineBuffer[writeSlot][column] = input[column];

        output[column].magnitude = 0;
        output[column].direction =
            GradientDirection::DEG_0;
    }

    /*
     * Three rows are required before the first valid
     * Sobel result can be produced.
     */
    if (rowsReceived < KERNEL_SIZE - 1) {
        ++rowsReceived;
        return;
    }

    const int outputRow = rowsReceived - 1;

    /*
     * The first and last image rows are defined as zero.
     */
    if (outputRow < 1 || outputRow >= HEIGHT - 1) {
        ++rowsReceived;
        return;
    }

    for (int column = 1; column < WIDTH - 1; ++column) {
        int gradientX = 0;
        int gradientY = 0;

        for (int kernelRow = 0;
             kernelRow < KERNEL_SIZE;
             ++kernelRow) {

            const int absoluteSourceRow =
                rowsReceived - 2 + kernelRow;

            const int bufferSlot =
                positive_modulo(
                    absoluteSourceRow,
                    KERNEL_SIZE
                );

            for (int kernelColumn = 0;
                 kernelColumn < KERNEL_SIZE;
                 ++kernelColumn) {

                const int sourceColumn =
                    column + kernelColumn - 1;

                const int pixel =
                    lineBuffer[bufferSlot][sourceColumn];

                gradientX +=
                    pixel *
                    SOBEL_X[kernelRow][kernelColumn];

                gradientY +=
                    pixel *
                    SOBEL_Y[kernelRow][kernelColumn];
            }
        }

        const int squaredMagnitude =
            gradientX * gradientX +
            gradientY * gradientY;

        int magnitude =
            static_cast<int>(
                std::sqrt(
                    static_cast<double>(squaredMagnitude)
                )
            );

        if (magnitude > 255) {
            magnitude = 255;
        }

        output[column].magnitude =
            static_cast<std::uint8_t>(magnitude);

        output[column].direction =
            quantise_direction(
                gradientX,
                gradientY
            );
    }

    ++rowsReceived;
}
