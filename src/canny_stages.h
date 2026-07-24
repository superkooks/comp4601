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
    std::uint8_t output[WIDTH],
    bool *valid_out
);

void sobel(
    const std::uint8_t input[WIDTH],
    GradientPixel output[WIDTH],
    bool valid_in,
    bool *valid_out
);

void non_maximum_suppression(
    const GradientPixel input[WIDTH],
    std::uint16_t output[WIDTH],
    bool valid_in,
    bool *valid_out
);

void double_threshold(
    const std::uint16_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool valid_in,
    bool *valid_out
);

template <int Instance>
void hysteresis(
    const std::uint8_t input[WIDTH],
    std::uint8_t output[WIDTH],
    bool valid_in,
    bool *valid_out,
    std::uint8_t resolve_weak
);

void output_row(const uint8_t input[WIDTH], uint8_t out[WIDTH*HEIGHT], bool valid);

void reset_canny_stages();
void gaussian_blur_reset();
void sobel_reset();
void non_maximum_suppression_reset();
void output_row_reset();

template <int Instance>
void hysteresis_reset();

void canny_top(struct RGBPixel in[WIDTH*HEIGHT], uint8_t out[WIDTH*HEIGHT]);

#endif