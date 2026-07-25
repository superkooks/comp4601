#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int WINDOW_SIZE = 3;

template <int Instance>
std::uint8_t lineBuffer[WINDOW_SIZE][WIDTH] = {};

template <int Instance>
int rowsReceived = 0;

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

template <int Instance>
bool has_strong_neighbour(
    int topSlot,
    int centreSlot,
    int bottomSlot,
    int column,
    bool hasTop,
    bool hasBottom,
    bool hasLeft,
    bool hasRight
) {
    return
        (hasTop && hasLeft && lineBuffer<Instance>[topSlot][column - 1] == STRONG_EDGE) ||
        (hasTop && lineBuffer<Instance>[topSlot][column] == STRONG_EDGE) ||
        (hasTop && hasRight && lineBuffer<Instance>[topSlot][column + 1] == STRONG_EDGE) ||
        (hasLeft && lineBuffer<Instance>[centreSlot][column - 1] == STRONG_EDGE) ||
        (hasRight && lineBuffer<Instance>[centreSlot][column + 1] == STRONG_EDGE) ||
        (hasBottom && hasLeft && lineBuffer<Instance>[bottomSlot][column - 1] == STRONG_EDGE) ||
        (hasBottom && lineBuffer<Instance>[bottomSlot][column] == STRONG_EDGE) ||
        (hasBottom && hasRight && lineBuffer<Instance>[bottomSlot][column + 1] == STRONG_EDGE);
}

}

template <int Instance>
void hysteresis_reset() {
    rowsReceived<Instance> = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            lineBuffer<Instance>[row][column] = NON_EDGE;
        }
    }
}

template <int Instance>
void hysteresis(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool valid_in,
    bool *valid_out,
    std::uint8_t resolve_weak
) {
    if (!valid_in) {
        *valid_out = false;
        return;
    }

    const int writeSlot =
        rowsReceived<Instance> % WINDOW_SIZE;

    for (int column = 0; column < WIDTH; ++column) {
        lineBuffer<Instance>[writeSlot][column] = input[column];
        output[column] = NON_EDGE;
    }
    rowsReceived<Instance>++;

    /*
     * The newest row is rowsReceived, so the output belongs
     * to the previous row.
     */
    const int outputRow = rowsReceived<Instance> - 2;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    const bool hasTop = outputRow > 0;
    const bool hasBottom = outputRow < HEIGHT - 1;

    const int topSlot =
        positive_modulo(
            rowsReceived<Instance> - 2,
            WINDOW_SIZE
        );

    const int centreSlot =
        positive_modulo(
            rowsReceived<Instance> - 1,
            WINDOW_SIZE
        );

    const int bottomSlot =
        positive_modulo(
            rowsReceived<Instance>,
            WINDOW_SIZE
        );

    for (int column = 0; column < WIDTH; ++column) {
        const std::uint8_t centre =
            lineBuffer<Instance>[centreSlot][column];

        const bool hasLeft = column > 0;
        const bool hasRight = column < WIDTH - 1;

        if (centre == STRONG_EDGE) {
            output[column] = STRONG_EDGE;
        }
        else if (
            centre == WEAK_EDGE &&
            has_strong_neighbour<Instance>(
                topSlot,
                centreSlot,
                bottomSlot,
                column,
                hasTop,
                hasBottom,
                hasLeft,
                hasRight
            )
        ) {
            output[column] = STRONG_EDGE;
        }
        else if (centre == WEAK_EDGE) {
            output[column] = resolve_weak;
        }
        else {
            output[column] = NON_EDGE;
        }
    }

    *valid_out = true;
}

template void hysteresis<1>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<2>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<3>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<4>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);

template void hysteresis_reset<1>();
template void hysteresis_reset<2>();
template void hysteresis_reset<3>();
template void hysteresis_reset<4>();
