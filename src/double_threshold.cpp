#include <cstdint>

#include "canny_stages.h"

void double_threshold(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    for (int column = 0; column < WIDTH; ++column) {
        const std::uint8_t magnitude = input[column];

        if (magnitude >= HIGH_THRESHOLD) {
            output[column] = STRONG_EDGE;
        }
        else if (magnitude >= LOW_THRESHOLD) {
            output[column] = WEAK_EDGE;
        }
        else {
            output[column] = NON_EDGE;
        }
    }
}
