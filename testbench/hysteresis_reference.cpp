#include <cstdint>

#include "hysteresis_reference.h"

namespace {

bool has_strong_neighbour(
    const std::uint8_t input[HEIGHT * WIDTH],
    int centreRow,
    int centreColumn
) {
    for (int rowOffset = -1; rowOffset <= 1; ++rowOffset) {
        for (
            int columnOffset = -1;
            columnOffset <= 1;
            ++columnOffset
        ) {
            if (rowOffset == 0 && columnOffset == 0) {
                continue;
            }

            const int neighbourRow =
                centreRow + rowOffset;

            const int neighbourColumn =
                centreColumn + columnOffset;

            const int neighbourIndex =
                neighbourRow * WIDTH +
                neighbourColumn;

            if (input[neighbourIndex] == STRONG_EDGE) {
                return true;
            }
        }
    }

    return false;
}

}

void hysteresis_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index =
                row * WIDTH + column;

            if (
                row == 0 ||
                row == HEIGHT - 1 ||
                column == 0 ||
                column == WIDTH - 1
            ) {
                output[index] = NON_EDGE;
                continue;
            }

            const std::uint8_t centre =
                input[index];

            if (centre == STRONG_EDGE) {
                output[index] = STRONG_EDGE;
            }
            else if (
                centre == WEAK_EDGE &&
                has_strong_neighbour(
                    input,
                    row,
                    column
                )
            ) {
                output[index] = STRONG_EDGE;
            }
            else {
                output[index] = NON_EDGE;
            }
        }
    }
}
