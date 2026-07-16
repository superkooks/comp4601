#ifndef SOBEL_REFERENCE_H
#define SOBEL_REFERENCE_H

#include <cstdint>

#include "config.h"
#include "canny_types.h"

void sobel_reference(
    const std::uint8_t input[HEIGHT * WIDTH],
    GradientPixel output[HEIGHT * WIDTH]
);

#endif
