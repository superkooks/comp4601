#include "canny_stages.h"

static int rowsReceived = 0;

void output_row_reset() {
    rowsReceived = 0;
}

void output_row(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH*HEIGHT],
    bool valid_in
) {
    if (!valid_in) {
        return;
    }

    rowsReceived++;
    
    for (int i = 0; i < WIDTH; i++) {
        output[i+(rowsReceived-1)*WIDTH] = input[i];
    }
}
