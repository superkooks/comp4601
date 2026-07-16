#include <cstdint>

#include "nms_reference.h"

void non_maximum_suppression_reference(
    const GradientPixel input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index = row * WIDTH + column;

            if (
                row == 0 ||
                row == HEIGHT - 1 ||
                column == 0 ||
                column == WIDTH - 1
            ) {
                output[index] = 0;
                continue;
            }

            const GradientPixel centre = input[index];

            std::uint8_t neighbourOne = 0;
            std::uint8_t neighbourTwo = 0;

            switch (centre.direction) {
                case GradientDirection::DEG_0:
                    neighbourOne =
                        input[row * WIDTH + column - 1].magnitude;

                    neighbourTwo =
                        input[row * WIDTH + column + 1].magnitude;
                    break;

                case GradientDirection::DEG_45:
                    neighbourOne =
                        input[(row - 1) * WIDTH + column - 1].magnitude;

                    neighbourTwo =
                        input[(row + 1) * WIDTH + column + 1].magnitude;
                    break;

                case GradientDirection::DEG_90:
                    neighbourOne =
                        input[(row - 1) * WIDTH + column].magnitude;

                    neighbourTwo =
                        input[(row + 1) * WIDTH + column].magnitude;
                    break;

                case GradientDirection::DEG_135:
                    neighbourOne =
                        input[(row - 1) * WIDTH + column + 1].magnitude;

                    neighbourTwo =
                        input[(row + 1) * WIDTH + column - 1].magnitude;
                    break;
            }

            if (
                centre.magnitude >= neighbourOne &&
                centre.magnitude >= neighbourTwo
            ) {
                output[index] = centre.magnitude;
            }
            else {
                output[index] = 0;
            }
        }
    }
}
