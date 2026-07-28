#include <cstdint>
#include "nms_reference.h"

void non_maximum_suppression_reference(
    const GradientPixel input[HEIGHT * WIDTH],
    std::uint16_t output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index = row * WIDTH + column;
            const GradientPixel centre = input[index];

            const bool hasTop = row > 0;
            const bool hasBottom = row < HEIGHT - 1;
            const bool hasLeft = column > 0;
            const bool hasRight = column < WIDTH - 1;

            std::uint16_t neighbourOne = 0;
            std::uint16_t neighbourTwo = 0;

            switch (centre.direction) {
                case GradientDirection::DEG_0:
                    neighbourOne = hasLeft ? input[index - 1].magnitude : 0;
                    neighbourTwo = hasRight ? input[index + 1].magnitude : 0;
                    break;

                case GradientDirection::DEG_45:
                    neighbourOne = (hasTop && hasLeft) ?
                        input[(row - 1) * WIDTH + column - 1].magnitude : 0;
                    neighbourTwo = (hasBottom && hasRight) ?
                        input[(row + 1) * WIDTH + column + 1].magnitude : 0;
                    break;

                case GradientDirection::DEG_90:
                    neighbourOne = hasTop ?
                        input[(row - 1) * WIDTH + column].magnitude : 0;
                    neighbourTwo = hasBottom ?
                        input[(row + 1) * WIDTH + column].magnitude : 0;
                    break;

                case GradientDirection::DEG_135:
                    neighbourOne = (hasTop && hasRight) ?
                        input[(row - 1) * WIDTH + column + 1].magnitude : 0;
                    neighbourTwo = (hasBottom && hasLeft) ?
                        input[(row + 1) * WIDTH + column - 1].magnitude : 0;
                    break;
            }

            output[index] =
                (centre.magnitude >= neighbourOne &&
                 centre.magnitude >= neighbourTwo)
                ? centre.magnitude
                : 0;
        }
    }
}
