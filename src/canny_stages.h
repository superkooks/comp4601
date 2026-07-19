#ifndef CANNY_STAGES_H
#define CANNY_STAGES_H

#include <cstdint>

#include "config.h"
#include "canny_types.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
);

void gaussian_blur(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH]
);

void sobel(
    const std::uint8_t input[WIDTH],
    GradientPixel output[WIDTH]
);

void non_maximum_suppression(
    const GradientPixel input[WIDTH],
    std::uint8_t output[WIDTH]
);

void double_threshold(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH]
);

void hysteresis(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH]
);

void gaussian_blur_reset();
void sobel_reset();
void non_maximum_suppression_reset();
void hysteresis_reset();
void reset_canny_stages();

#endif
