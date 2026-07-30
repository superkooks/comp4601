#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int WINDOW_SIZE = 3;

std::uint8_t lineBuffer[WINDOW_SIZE][WIDTH] = {};
int rowsReceived = 0;

int wrap3(int value) {
    int wrapped = value % WINDOW_SIZE;
    return wrapped < 0 ? wrapped + WINDOW_SIZE : wrapped;
}

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
#pragma HLS INLINE
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
#pragma HLS ARRAY_PARTITION variable=lineBuffer complete dim=1
    rowsReceived = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
            lineBuffer[row][column] = 0;
        }
    }
}

void sobel(
    const std::uint8_t input[WIDTH],
    GradientPixel output[WIDTH],
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
        output[column].magnitude = 0;
        output[column].direction = GradientDirection::DEG_0;
    }

    ++rowsReceived;

    const int outputRow = rowsReceived - 2;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    const int topRow = border_replicate(rowsReceived - 3, HEIGHT);
    const int centreRow = border_replicate(rowsReceived - 2, HEIGHT);
    const int bottomRow = border_replicate(rowsReceived - 1, HEIGHT);

    const int topSlot = wrap3(topRow);
    const int centreSlot = wrap3(centreRow);
    const int bottomSlot = wrap3(bottomRow);

    std::uint8_t topWindow[3];
    std::uint8_t centreWindow[3];
    std::uint8_t bottomWindow[3];
#pragma HLS ARRAY_PARTITION variable=topWindow complete
#pragma HLS ARRAY_PARTITION variable=centreWindow complete
#pragma HLS ARRAY_PARTITION variable=bottomWindow complete

    const std::uint8_t top0 = lineBuffer[topSlot][0];
    const std::uint8_t centre0 = lineBuffer[centreSlot][0];
    const std::uint8_t bottom0 = lineBuffer[bottomSlot][0];

    topWindow[0] = top0;
    topWindow[1] = top0;
    topWindow[2] = lineBuffer[topSlot][1];

    centreWindow[0] = centre0;
    centreWindow[1] = centre0;
    centreWindow[2] = lineBuffer[centreSlot][1];

    bottomWindow[0] = bottom0;
    bottomWindow[1] = bottom0;
    bottomWindow[2] = lineBuffer[bottomSlot][1];

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        const int gradientX =
            -static_cast<int>(topWindow[0]) +
             static_cast<int>(topWindow[2]) -
            (static_cast<int>(centreWindow[0]) << 1) +
            (static_cast<int>(centreWindow[2]) << 1) -
             static_cast<int>(bottomWindow[0]) +
             static_cast<int>(bottomWindow[2]);

        const int gradientY =
            -static_cast<int>(topWindow[0]) -
            (static_cast<int>(topWindow[1]) << 1) -
             static_cast<int>(topWindow[2]) +
             static_cast<int>(bottomWindow[0]) +
            (static_cast<int>(bottomWindow[1]) << 1) +
             static_cast<int>(bottomWindow[2]);

        output[column].magnitude = static_cast<std::uint16_t>(
            absolute_value(gradientX) + absolute_value(gradientY)
        );
        output[column].direction = quantise_direction(gradientX, gradientY);

        if (column != WIDTH - 1) {
            const int nextColumn =
                column + 2 < WIDTH ? column + 2 : WIDTH - 1;

            const std::uint8_t centreNext =
                lineBuffer[centreSlot][nextColumn];

            const std::uint8_t topNext =
                topRow == centreRow
                    ? centreNext
                    : lineBuffer[topSlot][nextColumn];

            const std::uint8_t bottomNext =
                bottomRow == centreRow
                    ? centreNext
                    : lineBuffer[bottomSlot][nextColumn];

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
