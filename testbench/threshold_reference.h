#ifndef THRESHOLD_REFERENCE_H
#define THRESHOLD_REFERENCE_H

#include <cstdint>
#include "canny_stages.h"

void double_threshold_reference(
    const std::uint16_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
);

#endif
