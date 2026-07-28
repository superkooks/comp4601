#ifndef HYSTERESIS_REFERENCE_H
#define HYSTERESIS_REFERENCE_H

#include <cstdint>
#include "canny_stages.h"

void hysteresis_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH],
    std::uint8_t resolve_weak
);

#endif
