#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int KERNEL_SIZE = 3;

constexpr int SOBEL_X[KERNEL_SIZE][KERNEL_SIZE] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

constexpr int SOBEL_Y[KERNEL_SIZE][KERNEL_SIZE] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

int positive_modulo(int value, int divisor) {
    const int result = value % divisor;
    return result < 0 ? result + divisor : result;
}

int absolute_value(int value) {
    return value < 0 ? -value : value;
}

GradientDirection quantise_direction(
    int gradientX,
    int gradientY
) {
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

int border_replicate(int v, int max) {
    if (v < 0) {
        return 0;
    } else if (v >= max) {
        return max - 1;
    } else {
        return v;
    }
}

}

void sobel(
    hls::stream<std::uint8_t> &input,
    hls::stream<GradientPixel> &output
) {
    /*
     * sobel needs 1 row of vertical look-ahead before it can emit its first
     * output row (see outputRow below), so it still owes 1 trailing output
     * row once its real input runs out. That trailing row is always resolved
     * by border_replicate reflecting back into a row already in lineBuffer,
     * never by reading anything new, so only the first HEIGHT of these
     * TOTAL_ROWS iterations touch the input stream at all.
     */
    constexpr int OWN_DELAY = 1;
    constexpr int TOTAL_ROWS = HEIGHT + OWN_DELAY;

    std::uint8_t lineBuffer[KERNEL_SIZE][WIDTH];
    #pragma HLS ARRAY_PARTITION variable=lineBuffer type=complete dim=1

    int rowsReceived = 0;

    for (int row = 0; row < TOTAL_ROWS; ++row) {
        if (row < HEIGHT) {
            const int writeSlot = rowsReceived % KERNEL_SIZE;

            for (int column = 0; column < WIDTH; ++column) {
                #pragma HLS PIPELINE II=1
                lineBuffer[writeSlot][column] = input.read();
            }
        }
        ++rowsReceived;

        const int outputRow = rowsReceived - 2;

        if (outputRow < 0) {
            continue;
        }

        /*
         * The three source rows are fixed for the whole output row, so
         * resolve their buffer slots once rather than once per pixel.
         */
        int slot[KERNEL_SIZE];
        #pragma HLS ARRAY_PARTITION variable=slot type=complete

        for (int kernelRow = 0; kernelRow < KERNEL_SIZE; ++kernelRow) {
            #pragma HLS UNROLL
            slot[kernelRow] =
                positive_modulo(
                    border_replicate(rowsReceived - 3 + kernelRow, HEIGHT),
                    KERNEL_SIZE
                );
        }

        /*
         * A 3x3 register window slides across the row, so each column is
         * fetched from the line buffer once instead of once per kernel tap.
         * Every bank is read at a fixed index and selected in registers,
         * because replicated border rows can name the same slot twice.
         */
        std::uint8_t window[KERNEL_SIZE][KERNEL_SIZE];
        #pragma HLS ARRAY_PARTITION variable=window type=complete dim=0

        for (int windowColumn = 0;
             windowColumn < KERNEL_SIZE;
             ++windowColumn) {
            #pragma HLS UNROLL

            const int sourceColumn =
                border_replicate(windowColumn - 1, WIDTH);

            for (int kernelRow = 0; kernelRow < KERNEL_SIZE; ++kernelRow) {
                #pragma HLS UNROLL
                window[kernelRow][windowColumn] =
                    lineBuffer[slot[kernelRow]][sourceColumn];
            }
        }

        for (int column = 0; column < WIDTH; ++column) {
            #pragma HLS PIPELINE II=1

            int gradientX = 0;
            int gradientY = 0;

            for (int kernelRow = 0;
                 kernelRow < KERNEL_SIZE;
                 ++kernelRow) {
                #pragma HLS UNROLL

                for (int kernelColumn = 0;
                     kernelColumn < KERNEL_SIZE;
                     ++kernelColumn) {
                    #pragma HLS UNROLL

                    const int pixel =
                        window[kernelRow][kernelColumn];

                    gradientX +=
                        pixel *
                        SOBEL_X[kernelRow][kernelColumn];

                    gradientY +=
                        pixel *
                        SOBEL_Y[kernelRow][kernelColumn];
                }
            }

            // Compute gradient the same way opencv does
            GradientPixel result;
            result.magnitude = absolute_value(gradientX) + absolute_value(gradientY);
            result.direction = quantise_direction(gradientX, gradientY);
            output.write(result);

            const int nextColumn =
                border_replicate(column + 2, WIDTH);

            std::uint8_t banked[KERNEL_SIZE];
            #pragma HLS ARRAY_PARTITION variable=banked type=complete

            for (int bank = 0; bank < KERNEL_SIZE; ++bank) {
                #pragma HLS UNROLL
                banked[bank] = lineBuffer[bank][nextColumn];
            }

            for (int kernelRow = 0; kernelRow < KERNEL_SIZE; ++kernelRow) {
                #pragma HLS UNROLL
                window[kernelRow][0] = window[kernelRow][1];
                window[kernelRow][1] = window[kernelRow][2];
                window[kernelRow][2] = banked[slot[kernelRow]];
            }
        }
    }
}
