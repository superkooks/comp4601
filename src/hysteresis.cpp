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

int clamp_column(int v) {
    if (v < 0) {
        return 0;
    } else if (v >= WIDTH) {
        return WIDTH - 1;
    } else {
        return v;
    }
}

/*
 * Window row 0 is the row above, row 1 the centre row and row 2 the row below.
 * Window column 0 is the column to the left, 1 the centre and 2 the right.
 */
bool has_strong_neighbour(
    const std::uint8_t window[WINDOW_SIZE][WINDOW_SIZE],
    bool hasTop,
    bool hasBottom,
    bool hasLeft,
    bool hasRight
) {
    return
        (hasTop && hasLeft && window[0][0] == STRONG_EDGE) ||
        (hasTop && window[0][1] == STRONG_EDGE) ||
        (hasTop && hasRight && window[0][2] == STRONG_EDGE) ||
        (hasLeft && window[1][0] == STRONG_EDGE) ||
        (hasRight && window[1][2] == STRONG_EDGE) ||
        (hasBottom && hasLeft && window[2][0] == STRONG_EDGE) ||
        (hasBottom && window[2][1] == STRONG_EDGE) ||
        (hasBottom && hasRight && window[2][2] == STRONG_EDGE);
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
    /*
     * Bound to a plain name so the partition pragma can refer to it: the
     * pragma parser does not accept a template argument list.
     */
    auto &buffer = lineBuffer<Instance>;
    #pragma HLS ARRAY_PARTITION variable=buffer type=complete dim=1

    if (!valid_in) {
        *valid_out = false;
        return;
    }

    const int writeSlot =
        rowsReceived<Instance> % WINDOW_SIZE;

    for (int column = 0; column < WIDTH; ++column) {
        #pragma HLS PIPELINE II=1
        buffer[writeSlot][column] = input[column];
    }
    rowsReceived<Instance>++;

    const int outputRow = rowsReceived<Instance> - 2;

    if (outputRow < 0) {
        *valid_out = false;
        return;
    }

    const bool hasTop = outputRow > 0;
    const bool hasBottom = outputRow < HEIGHT - 1;

    /*
     * Row slots are fixed for the whole output row, so resolve them once
     * rather than once per pixel.
     */
    int slot[WINDOW_SIZE];
    #pragma HLS ARRAY_PARTITION variable=slot type=complete

    slot[0] =
        positive_modulo(
            rowsReceived<Instance> - 3,
            WINDOW_SIZE
        );

    slot[1] =
        positive_modulo(
            rowsReceived<Instance> - 2,
            WINDOW_SIZE
        );

    slot[2] =
        positive_modulo(
            rowsReceived<Instance> - 1,
            WINDOW_SIZE
        );

    /*
     * A 3x3 register window slides across the row so the line buffer is read
     * once per column instead of once per neighbour.  Every bank is read at a
     * fixed index and selected in registers, because the slots are dynamic.
     * Columns outside the image are clamped when loaded and then discarded by
     * the hasLeft and hasRight guards.
     */
    std::uint8_t window[WINDOW_SIZE][WINDOW_SIZE];
    #pragma HLS ARRAY_PARTITION variable=window type=complete dim=0

    for (int windowColumn = 0;
         windowColumn < WINDOW_SIZE;
         ++windowColumn) {
        #pragma HLS UNROLL

        const int sourceColumn = clamp_column(windowColumn - 1);

        for (int windowRow = 0; windowRow < WINDOW_SIZE; ++windowRow) {
            #pragma HLS UNROLL
            window[windowRow][windowColumn] =
                buffer[slot[windowRow]][sourceColumn];
        }
    }

    for (int column = 0; column < WIDTH; ++column) {
        #pragma HLS PIPELINE II=1

        const std::uint8_t centre = window[1][1];

        const bool hasLeft = column > 0;
        const bool hasRight = column < WIDTH - 1;

        if (centre == STRONG_EDGE) {
            output[column] = STRONG_EDGE;
        }
        else if (
            centre == WEAK_EDGE &&
            has_strong_neighbour(
                window,
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

        const int nextColumn = clamp_column(column + 2);

        std::uint8_t banked[WINDOW_SIZE];
        #pragma HLS ARRAY_PARTITION variable=banked type=complete

        for (int bank = 0; bank < WINDOW_SIZE; ++bank) {
            #pragma HLS UNROLL
            banked[bank] = buffer[bank][nextColumn];
        }

        for (int windowRow = 0; windowRow < WINDOW_SIZE; ++windowRow) {
            #pragma HLS UNROLL
            window[windowRow][0] = window[windowRow][1];
            window[windowRow][1] = window[windowRow][2];
            window[windowRow][2] = banked[slot[windowRow]];
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
