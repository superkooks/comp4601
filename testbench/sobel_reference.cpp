#include <cstdint>
#include "sobel_reference.h"

namespace {

constexpr int SOBEL_X[3][3] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

constexpr int SOBEL_Y[3][3] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

int absolute_value(int value) {
    return value < 0 ? -value : value;
}

int border_replicate(int value, int limit) {
    if (value < 0) {
        return 0;
    }

    if (value >= limit) {
        return limit - 1;
    }

    return value;
}

GradientDirection quantise_direction(int gradientX, int gradientY) {
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

void sobel_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    GradientPixel output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            int gradientX = 0;
            int gradientY = 0;

            for (int kernelRow = 0; kernelRow < 3; ++kernelRow) {
                const int sourceRow =
                    border_replicate(row + kernelRow - 1, HEIGHT);

                for (int kernelColumn = 0;
                     kernelColumn < 3;
                     ++kernelColumn) {
                    const int sourceColumn =
                        border_replicate(column + kernelColumn - 1, WIDTH);

                    const int pixel =
                        input[sourceRow * WIDTH + sourceColumn];

                    gradientX += pixel * SOBEL_X[kernelRow][kernelColumn];
                    gradientY += pixel * SOBEL_Y[kernelRow][kernelColumn];
                }
            }

            GradientPixel& result = output[row * WIDTH + column];
            result.magnitude = static_cast<std::uint16_t>(
                absolute_value(gradientX) + absolute_value(gradientY)
            );
            result.direction = quantise_direction(gradientX, gradientY);
        }
    }
}
