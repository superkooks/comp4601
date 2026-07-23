#include <cstdint>

#include "canny_stages.h"

namespace {

constexpr int WINDOW_SIZE = 3;

std::uint8_t lineBuffer[WINDOW_SIZE][WIDTH] = {};
int rowsReceived = 0;

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

bool has_strong_neighbour(
    int topSlot,
    int centreSlot,
    int bottomSlot,
    int column
) {
    return
        lineBuffer[topSlot][column - 1] == STRONG_EDGE ||
        lineBuffer[topSlot][column] == STRONG_EDGE ||
        lineBuffer[topSlot][column + 1] == STRONG_EDGE ||
        lineBuffer[centreSlot][column - 1] == STRONG_EDGE ||
        lineBuffer[centreSlot][column + 1] == STRONG_EDGE ||
        lineBuffer[bottomSlot][column - 1] == STRONG_EDGE ||
        lineBuffer[bottomSlot][column] == STRONG_EDGE ||
        lineBuffer[bottomSlot][column + 1] == STRONG_EDGE;
}

}

void hysteresis_reset() {
    rowsReceived = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            lineBuffer[row][column] = NON_EDGE;
        }
    }
}

void hysteresis(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool valid_in,
    bool *valid_out
) {
    if (!valid_in) {
        *valid_out = false;
        return;
    }

    const int writeSlot =
        rowsReceived % WINDOW_SIZE;

    for (int column = 0; column < WIDTH; ++column) {
        lineBuffer[writeSlot][column] = input[column];
        output[column] = NON_EDGE;
    }

    /*
     * Three rows are required before a complete
     * 3x3 neighbourhood is available.
     */
    if (rowsReceived < WINDOW_SIZE - 1) {
        *valid_out = false;
        ++rowsReceived;
        return;
    }

    /*
     * The newest row is rowsReceived, so the output belongs
     * to the previous row.
     */
    const int outputRow = rowsReceived - 1;

    /*
     * Force the outer image border to NON_EDGE.
     */
    if (outputRow < 1 || outputRow >= HEIGHT - 1) {
        *valid_out = false;
        ++rowsReceived;
        return;
    }

    const int topSlot =
        positive_modulo(
            rowsReceived - 2,
            WINDOW_SIZE
        );

    const int centreSlot =
        positive_modulo(
            rowsReceived - 1,
            WINDOW_SIZE
        );

    const int bottomSlot =
        positive_modulo(
            rowsReceived,
            WINDOW_SIZE
        );

    for (int column = 1; column < WIDTH - 1; ++column) {
        const std::uint8_t centre =
            lineBuffer[centreSlot][column];

        if (centre == STRONG_EDGE) {
            output[column] = STRONG_EDGE;
        }
        else if (
            centre == WEAK_EDGE &&
            has_strong_neighbour(
                topSlot,
                centreSlot,
                bottomSlot,
                column
            )
        ) {
            output[column] = STRONG_EDGE;
        }
        else {
            output[column] = NON_EDGE;
        }
    }

    *valid_out = true;
    ++rowsReceived;
}
