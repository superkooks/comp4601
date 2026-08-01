#include <cstdint>

#include "canny_stages.h"

void double_threshold(
    hls::stream<std::uint16_t> &input,
    hls::stream<std::uint8_t> &output
) {
    // No vertical window, so no look-ahead rows are owed at the end.
    for (int i = 0; i < HEIGHT * WIDTH; ++i) {
        #pragma HLS PIPELINE II=1

        const std::uint16_t magnitude = input.read();

        std::uint8_t result;
        if (magnitude >= HIGH_THRESHOLD) {
            result = STRONG_EDGE;
        }
        else if (magnitude >= LOW_THRESHOLD) {
            result = WEAK_EDGE;
        }
        else {
            result = NON_EDGE;
        }

        output.write(result);
    }
}
