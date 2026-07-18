#include <cstdint>

#include "threshold_reference.h"

void double_threshold_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    for (int index = 0; index < HEIGHT * WIDTH; ++index) {
        const std::uint8_t magnitude = input[index];

        if (magnitude >= HIGH_THRESHOLD) {
            output[index] = STRONG_EDGE;
        }
        else if (magnitude >= LOW_THRESHOLD) {
            output[index] = WEAK_EDGE;
        }
        else {
            output[index] = NON_EDGE;
        }
    }
}
