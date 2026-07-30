#include <cstdint>

#include "canny_stages.h"
#include "config.h"

namespace {

constexpr int WINDOW_SIZE = 3;

std::uint8_t lineBuffer1[WINDOW_SIZE][WIDTH] = {};
std::uint8_t lineBuffer2[WINDOW_SIZE][WIDTH] = {};
std::uint8_t lineBuffer3[WINDOW_SIZE][WIDTH] = {};
std::uint8_t lineBuffer4[WINDOW_SIZE][WIDTH] = {};
int rowsReceived1 = 0;
int rowsReceived2 = 0;
int rowsReceived3 = 0;
int rowsReceived4 = 0;

template <int Instance>
struct HysteresisState;

template <>
struct HysteresisState<1> {
    static std::uint8_t (&buffer())[WINDOW_SIZE][WIDTH] {
        return lineBuffer1;
    }

    static int &rows() {
        return rowsReceived1;
    }
};

template <>
struct HysteresisState<2> {
    static std::uint8_t (&buffer())[WINDOW_SIZE][WIDTH] {
        return lineBuffer2;
    }

    static int &rows() {
        return rowsReceived2;
    }
};

template <>
struct HysteresisState<3> {
    static std::uint8_t (&buffer())[WINDOW_SIZE][WIDTH] {
        return lineBuffer3;
    }

    static int &rows() {
        return rowsReceived3;
    }
};

template <>
struct HysteresisState<4> {
    static std::uint8_t (&buffer())[WINDOW_SIZE][WIDTH] {
        return lineBuffer4;
    }

    static int &rows() {
        return rowsReceived4;
    }
};

int wrap3(int value) {
    int wrapped = value % WINDOW_SIZE;
    return wrapped < 0 ? wrapped + WINDOW_SIZE : wrapped;
}

bool window_has_strong_neighbour(
    const std::uint8_t topWindow[3],
    const std::uint8_t centreWindow[3],
    const std::uint8_t bottomWindow[3]
) {
#pragma HLS INLINE
    return
        topWindow[0] == STRONG_EDGE ||
        topWindow[1] == STRONG_EDGE ||
        topWindow[2] == STRONG_EDGE ||
        centreWindow[0] == STRONG_EDGE ||
        centreWindow[2] == STRONG_EDGE ||
        bottomWindow[0] == STRONG_EDGE ||
        bottomWindow[1] == STRONG_EDGE ||
        bottomWindow[2] == STRONG_EDGE;
}

}

template <int Instance>
void hysteresis_reset() {
    std::uint8_t (&buffer)[WINDOW_SIZE][WIDTH] =
        HysteresisState<Instance>::buffer();
    int &rowsReceived = HysteresisState<Instance>::rows();
#pragma HLS ARRAY_PARTITION variable=buffer complete dim=1

    rowsReceived = 0;

    for (int row = 0; row < WINDOW_SIZE; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
            buffer[row][column] = NON_EDGE;
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
    std::uint8_t (&buffer)[WINDOW_SIZE][WIDTH] =
        HysteresisState<Instance>::buffer();
    int &rowsReceived = HysteresisState<Instance>::rows();
#pragma HLS ARRAY_PARTITION variable=buffer complete dim=1

    if (!valid_in) {
        *valid_out = false;
        return;
    }

    const int writeSlot = wrap3(rowsReceived);

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        buffer[writeSlot][column] = input[column];
        output[column] = NON_EDGE;
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

    std::uint8_t topWindow[3];
    std::uint8_t centreWindow[3];
    std::uint8_t bottomWindow[3];
#pragma HLS ARRAY_PARTITION variable=topWindow complete
#pragma HLS ARRAY_PARTITION variable=centreWindow complete
#pragma HLS ARRAY_PARTITION variable=bottomWindow complete

    topWindow[0] = NON_EDGE;
    topWindow[1] = hasTop ? buffer[topSlot][0] : NON_EDGE;
    topWindow[2] = hasTop ? buffer[topSlot][1] : NON_EDGE;

    centreWindow[0] = NON_EDGE;
    centreWindow[1] = buffer[centreSlot][0];
    centreWindow[2] = buffer[centreSlot][1];

    bottomWindow[0] = NON_EDGE;
    bottomWindow[1] = hasBottom ? buffer[bottomSlot][0] : NON_EDGE;
    bottomWindow[2] = hasBottom ? buffer[bottomSlot][1] : NON_EDGE;

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        const std::uint8_t centre = centreWindow[1];

        if (centre == STRONG_EDGE) {
            output[column] = STRONG_EDGE;
        }
        else if (
            centre == WEAK_EDGE &&
            window_has_strong_neighbour(
                topWindow,
                centreWindow,
                bottomWindow
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

        if (column != WIDTH - 1) {
            const int nextColumn = column + 2;

            const std::uint8_t topNext =
                hasTop && nextColumn < WIDTH
                    ? buffer[topSlot][nextColumn]
                    : NON_EDGE;

            const std::uint8_t centreNext =
                nextColumn < WIDTH
                    ? buffer[centreSlot][nextColumn]
                    : NON_EDGE;

            const std::uint8_t bottomNext =
                hasBottom && nextColumn < WIDTH
                    ? buffer[bottomSlot][nextColumn]
                    : NON_EDGE;

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

template void hysteresis<1>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<2>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<3>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);
template void hysteresis<4>(const std::uint8_t[WIDTH], std::uint8_t[WIDTH], bool, bool*, std::uint8_t);

template void hysteresis_reset<1>();
template void hysteresis_reset<2>();
template void hysteresis_reset<3>();
template void hysteresis_reset<4>();
