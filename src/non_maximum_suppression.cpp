#include <cstdint>

#include "canny_stages.h"

namespace {

constexpr int WINDOW_SIZE = 3;

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

int clamp_column(int v) {
    if (v < 0) {
        return 0;
    } else if (v >= WIDTH) {
        return WIDTH - 1;
    } else {
        return v;
    }
}

}

void non_maximum_suppression(
    hls::stream<GradientPixel> &input,
    hls::stream<std::uint16_t> &output
) {
    /*
     * non_maximum_suppression needs 1 row of vertical look-ahead before it
     * can emit its first output row (see outputRow below), so it still owes
     * 1 trailing output row once its real input runs out. That trailing row
     * is always resolved from rows already in lineBuffer (via hasTop /
     * hasBottom gating, not by reading anything new), so only the first
     * HEIGHT of these TOTAL_ROWS iterations touch the input stream at all.
     */
    constexpr int OWN_DELAY = 1;
    constexpr int TOTAL_ROWS = HEIGHT + OWN_DELAY;

    GradientPixel lineBuffer[WINDOW_SIZE][WIDTH];
    #pragma HLS ARRAY_PARTITION variable=lineBuffer type=complete dim=1

    int rowsReceived = 0;

    for (int row = 0; row < TOTAL_ROWS; ++row) {
        if (row < HEIGHT) {
            const int writeSlot = rowsReceived % WINDOW_SIZE;

            for (int column = 0; column < WIDTH; ++column) {
                #pragma HLS PIPELINE II=1
                lineBuffer[writeSlot][column] = input.read();
            }
        }
        ++rowsReceived;

        /*
         * The newest row is rowsReceived, so the output belongs
         * to the previous row.
         */
        const int outputRow = rowsReceived - 2;

        if (outputRow < 0) {
            continue;
        }

        const bool hasTop = outputRow > 0;
        const bool hasBottom = outputRow < HEIGHT - 1;

        /*
         * Row slots are fixed for the whole output row.  Window row 0 is the
         * row above, row 1 the centre row and row 2 the row below.
         */
        int slot[WINDOW_SIZE];
        #pragma HLS ARRAY_PARTITION variable=slot type=complete

        slot[0] = positive_modulo(rowsReceived - 3, WINDOW_SIZE);
        slot[1] = positive_modulo(rowsReceived - 2, WINDOW_SIZE);
        slot[2] = positive_modulo(rowsReceived - 1, WINDOW_SIZE);

        /*
         * A 3x3 register window slides across the row so the line buffer is
         * read once per column rather than once per neighbour.  Every bank is
         * read at a fixed index and selected in registers, because the slots
         * are dynamic.  Columns outside the image are clamped when loaded and
         * then discarded by the hasLeft and hasRight guards below.
         */
        GradientPixel window[WINDOW_SIZE][WINDOW_SIZE];
        #pragma HLS ARRAY_PARTITION variable=window type=complete dim=0

        for (int windowColumn = 0;
             windowColumn < WINDOW_SIZE;
             ++windowColumn) {
            #pragma HLS UNROLL

            const int sourceColumn = clamp_column(windowColumn - 1);

            for (int windowRow = 0; windowRow < WINDOW_SIZE; ++windowRow) {
                #pragma HLS UNROLL
                window[windowRow][windowColumn] =
                    lineBuffer[slot[windowRow]][sourceColumn];
            }
        }

        for (int column = 0; column < WIDTH; ++column) {
            #pragma HLS PIPELINE II=1

            const GradientPixel centre = window[1][1];

            const bool hasLeft = column > 0;
            const bool hasRight = column < WIDTH - 1;

            std::uint16_t neighbourOne = 0;
            std::uint16_t neighbourTwo = 0;

            switch (centre.direction) {
                case GradientDirection::DEG_0:
                    neighbourOne = hasLeft ?
                        window[1][0].magnitude : 0;

                    neighbourTwo = hasRight ?
                        window[1][2].magnitude : 0;
                    break;

                case GradientDirection::DEG_45:
                    neighbourOne = (hasTop && hasLeft) ?
                        window[0][0].magnitude : 0;

                    neighbourTwo = (hasBottom && hasRight) ?
                        window[2][2].magnitude : 0;
                    break;

                case GradientDirection::DEG_90:
                    neighbourOne = hasTop ?
                        window[0][1].magnitude : 0;

                    neighbourTwo = hasBottom ?
                        window[2][1].magnitude : 0;
                    break;

                case GradientDirection::DEG_135:
                    neighbourOne = (hasTop && hasRight) ?
                        window[0][2].magnitude : 0;

                    neighbourTwo = (hasBottom && hasLeft) ?
                        window[2][0].magnitude : 0;
                    break;
            }

            if (
                centre.magnitude >= neighbourOne &&
                centre.magnitude >= neighbourTwo
            ) {
                output.write(centre.magnitude);
            }
            else {
                output.write(0);
            }

            const int nextColumn = clamp_column(column + 2);

            GradientPixel banked[WINDOW_SIZE];
            #pragma HLS ARRAY_PARTITION variable=banked type=complete

            for (int bank = 0; bank < WINDOW_SIZE; ++bank) {
                #pragma HLS UNROLL
                banked[bank] = lineBuffer[bank][nextColumn];
            }

            for (int windowRow = 0; windowRow < WINDOW_SIZE; ++windowRow) {
                #pragma HLS UNROLL
                window[windowRow][0] = window[windowRow][1];
                window[windowRow][1] = window[windowRow][2];
                window[windowRow][2] = banked[slot[windowRow]];
            }
        }
    }
}
