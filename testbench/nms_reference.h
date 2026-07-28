#ifndef NMS_REFERENCE_H
#define NMS_REFERENCE_H

#include <cstdint>
#include "canny_stages.h"

void non_maximum_suppression_reference(
    const GradientPixel input[HEIGHT * WIDTH],
    std::uint16_t output[HEIGHT * WIDTH]
);

#endif
