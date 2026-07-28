#ifndef PIPELINE_REFERENCE_H
#define PIPELINE_REFERENCE_H

#include <cstdint>
#include "canny_stages.h"

void canny_reference(
    const RGBPixel input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
);

#endif
