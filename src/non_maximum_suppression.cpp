#include <cstdint>

#include "canny_stages.h"

namespace {

constexpr int WINDOW_SIZE = 3;

GradientPixel lineBuffer[WINDOW_SIZE][WIDTH] = {};
int rowsReceived = 0;

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

}

void non_maximum_suppression_reset() {
    rowsReceived = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            lineBuffer[row][column].magnitude = 0;
            lineBuffer[row][column].direction =
                GradientDirection::DEG_0;
        }
    }
}

void non_maximum_suppression(
    const GradientPixel input[WIDTH],
    std::uint16_t output[WIDTH],
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
        output[column] = 0;
    }
    ++rowsReceived;

    /*
     * The newest row is rowsReceived, so the output belongs
     * to the previous row.
     */
    const int outputRow = rowsReceived - 2;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    const bool hasTop = outputRow > 0;
    const bool hasBottom = outputRow < HEIGHT - 1;

    const int topSlot =
        positive_modulo(rowsReceived - 3, WINDOW_SIZE);

    const int centreSlot =
        positive_modulo(rowsReceived - 2, WINDOW_SIZE);

    const int bottomSlot =
        positive_modulo(rowsReceived - 1, WINDOW_SIZE);

    for (int column = 0; column < WIDTH; ++column) {
        const GradientPixel centre =
            lineBuffer[centreSlot][column];

        const bool hasLeft = column > 0;
        const bool hasRight = column < WIDTH - 1;

        std::uint16_t neighbourOne = 0;
        std::uint16_t neighbourTwo = 0;

        switch (centre.direction) {
            case GradientDirection::DEG_0:
                neighbourOne = hasLeft ?
                    lineBuffer[centreSlot][column - 1].magnitude : 0;

                neighbourTwo = hasRight ?
                    lineBuffer[centreSlot][column + 1].magnitude : 0;
                break;

            case GradientDirection::DEG_45:
                neighbourOne = (hasTop && hasLeft) ?
                    lineBuffer[topSlot][column - 1].magnitude : 0;

                neighbourTwo = (hasBottom && hasRight) ?
                    lineBuffer[bottomSlot][column + 1].magnitude : 0;
                break;

            case GradientDirection::DEG_90:
                neighbourOne = hasTop ?
                    lineBuffer[topSlot][column].magnitude : 0;

                neighbourTwo = hasBottom ?
                    lineBuffer[bottomSlot][column].magnitude : 0;
                break;

            case GradientDirection::DEG_135:
                neighbourOne = (hasTop && hasRight) ?
                    lineBuffer[topSlot][column + 1].magnitude : 0;

                neighbourTwo = (hasBottom && hasLeft) ?
                    lineBuffer[bottomSlot][column - 1].magnitude : 0;
                break;
        }

        if (
            centre.magnitude >= neighbourOne &&
            centre.magnitude >= neighbourTwo
        ) {
            output[column] = centre.magnitude;
        }
        else {
            output[column] = 0;
        }
    }

    *valid_out = true;
}
