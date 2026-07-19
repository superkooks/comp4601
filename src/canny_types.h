#ifndef CANNY_TYPES_H
#define CANNY_TYPES_H

#include <cstdint>

struct RGBPixel {
    std::uint8_t red;
    std::uint8_t green;
    std::uint8_t blue;
};

enum class GradientDirection : std::uint8_t {
    DEG_0 = 0,
    DEG_45 = 1,
    DEG_90 = 2,
    DEG_135 = 3
};

struct GradientPixel {
    std::uint8_t magnitude;
    GradientDirection direction;
};

#endif
