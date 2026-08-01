#include "canny_stages.h"

void write_frame(
    hls::stream<std::uint8_t> &in,
    uint8_t out[WIDTH*HEIGHT]
) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int col = 0; col < WIDTH; ++col) {
            #pragma HLS PIPELINE II=1
            out[row * WIDTH + col] = in.read();
        }
    }
}
