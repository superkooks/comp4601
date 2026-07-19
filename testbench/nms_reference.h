#ifndef NMS_REFERENCE_H
#define NMS_REFERENCE_H

#include <cstdint>

#include "config.h"
#include "canny_types.h"

void non_maximum_suppression_reference(
    const GradientPixel input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
);

#endif
