#ifndef GAUSSIAN_REFERENCE_H
#define GAUSSIAN_REFERENCE_H

#include <cstdint>
#include "canny_stages.h"

void gaussian_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
);

#endif
