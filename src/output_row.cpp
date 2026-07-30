#include "canny_stages.h"

namespace {

int rowsWritten = 0;

}

void output_row_reset() {
    rowsWritten = 0;
}

void output_row(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH * HEIGHT],
    bool valid_in
) {
    if (!valid_in || rowsWritten >= HEIGHT) {
        return;
    }

    const int rowOffset = rowsWritten * WIDTH;

    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        output[rowOffset + column] = input[column];
    }

    ++rowsWritten;
}
