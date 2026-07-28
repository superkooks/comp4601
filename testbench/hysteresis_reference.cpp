#include <cstdint>
#include "hysteresis_reference.h"

namespace {

bool has_strong_neighbour(
    const std::uint8_t input[HEIGHT * WIDTH],
    int row,
    int column
) {
    for (int rowOffset = -1; rowOffset <= 1; ++rowOffset) {
        for (int columnOffset = -1; columnOffset <= 1; ++columnOffset) {
            if (rowOffset == 0 && columnOffset == 0) {
                continue;
            }

            const int neighbourRow = row + rowOffset;
            const int neighbourColumn = column + columnOffset;

            if (
                neighbourRow >= 0 &&
                neighbourRow < HEIGHT &&
                neighbourColumn >= 0 &&
                neighbourColumn < WIDTH &&
                input[neighbourRow * WIDTH + neighbourColumn] == STRONG_EDGE
            ) {
                return true;
            }
        }
    }

    return false;
}

}

void hysteresis_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH],
    std::uint8_t resolve_weak
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index = row * WIDTH + column;
            const std::uint8_t centre = input[index];

            if (centre == STRONG_EDGE) {
                output[index] = STRONG_EDGE;
            }
            else if (
                centre == WEAK_EDGE &&
                has_strong_neighbour(input, row, column)
            ) {
                output[index] = STRONG_EDGE;
            }
            else if (centre == WEAK_EDGE) {
                output[index] = resolve_weak;
            }
            else {
                output[index] = NON_EDGE;
            }
        }
    }
}
