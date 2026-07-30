#include <cstdint>

#include "canny_stages.h"

namespace {

constexpr int WINDOW_SIZE = 3;

GradientPixel lineBuffer[WINDOW_SIZE][WIDTH] = {};
int rowsReceived = 0;

int wrap3(int value) {
    int wrapped = value % WINDOW_SIZE;
    return wrapped < 0 ? wrapped + WINDOW_SIZE : wrapped;
}

GradientPixel zero_gradient() {
#pragma HLS INLINE
    GradientPixel value{};
    value.magnitude = 0;
    value.direction = GradientDirection::DEG_0;
    return value;
}

}

void non_maximum_suppression_reset() {
#pragma HLS ARRAY_PARTITION variable=lineBuffer complete dim=1
    rowsReceived = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
            lineBuffer[row][column] = zero_gradient();
        }
    }
}

void non_maximum_suppression(
    const GradientPixel input[WIDTH],
    std::uint16_t output[WIDTH],
    bool valid_in,
    bool *valid_out
) {
#pragma HLS ARRAY_PARTITION variable=lineBuffer complete dim=1
    if (!valid_in) {
        *valid_out = false;
        return;
    }

    const int writeSlot = wrap3(rowsReceived);

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        lineBuffer[writeSlot][column] = input[column];
        output[column] = 0;
    }

    ++rowsReceived;

    const int outputRow = rowsReceived - 2;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    const bool hasTop = outputRow > 0;
    const bool hasBottom = outputRow < HEIGHT - 1;

    const int topSlot = wrap3(rowsReceived - 3);
    const int centreSlot = wrap3(rowsReceived - 2);
    const int bottomSlot = wrap3(rowsReceived - 1);

    GradientPixel topWindow[3];
    GradientPixel centreWindow[3];
    GradientPixel bottomWindow[3];
#pragma HLS ARRAY_PARTITION variable=topWindow complete
#pragma HLS ARRAY_PARTITION variable=centreWindow complete
#pragma HLS ARRAY_PARTITION variable=bottomWindow complete

    const GradientPixel zero = zero_gradient();

    topWindow[0] = zero;
    topWindow[1] = hasTop ? lineBuffer[topSlot][0] : zero;
    topWindow[2] = hasTop ? lineBuffer[topSlot][1] : zero;

    centreWindow[0] = zero;
    centreWindow[1] = lineBuffer[centreSlot][0];
    centreWindow[2] = lineBuffer[centreSlot][1];

    bottomWindow[0] = zero;
    bottomWindow[1] = hasBottom ? lineBuffer[bottomSlot][0] : zero;
    bottomWindow[2] = hasBottom ? lineBuffer[bottomSlot][1] : zero;

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        const GradientPixel centre = centreWindow[1];

        std::uint16_t neighbourOne = 0;
        std::uint16_t neighbourTwo = 0;

        switch (centre.direction) {
            case GradientDirection::DEG_0:
                neighbourOne = centreWindow[0].magnitude;
                neighbourTwo = centreWindow[2].magnitude;
                break;

            case GradientDirection::DEG_45:
                neighbourOne = topWindow[0].magnitude;
                neighbourTwo = bottomWindow[2].magnitude;
                break;

            case GradientDirection::DEG_90:
                neighbourOne = topWindow[1].magnitude;
                neighbourTwo = bottomWindow[1].magnitude;
                break;

            case GradientDirection::DEG_135:
                neighbourOne = topWindow[2].magnitude;
                neighbourTwo = bottomWindow[0].magnitude;
                break;
        }

        output[column] =
            centre.magnitude >= neighbourOne &&
            centre.magnitude >= neighbourTwo
                ? centre.magnitude
                : 0;

        if (column != WIDTH - 1) {
            const int nextColumn = column + 2;

            const GradientPixel topNext =
                hasTop && nextColumn < WIDTH
                    ? lineBuffer[topSlot][nextColumn]
                    : zero;

            const GradientPixel centreNext =
                nextColumn < WIDTH
                    ? lineBuffer[centreSlot][nextColumn]
                    : zero;

            const GradientPixel bottomNext =
                hasBottom && nextColumn < WIDTH
                    ? lineBuffer[bottomSlot][nextColumn]
                    : zero;

            topWindow[0] = topWindow[1];
            topWindow[1] = topWindow[2];
            topWindow[2] = topNext;

            centreWindow[0] = centreWindow[1];
            centreWindow[1] = centreWindow[2];
            centreWindow[2] = centreNext;

            bottomWindow[0] = bottomWindow[1];
            bottomWindow[1] = bottomWindow[2];
            bottomWindow[2] = bottomNext;
        }
    }

    *valid_out = true;
}
