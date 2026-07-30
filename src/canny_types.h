#ifndef CANNY_TYPES_H
#define CANNY_TYPES_H

#include <cstdint>

#include "config.h"

/*
 * Four bytes, not three.  A three byte pixel puts consecutive pixels at three
 * byte offsets, so no group of them ever lands on a 64 byte boundary and the
 * AXI master cannot widen its reads to the port width.  With four bytes,
 * sixteen pixels fill one 512 bit beat exactly.  The fourth byte is unused by
 * the kernel; the host fills it via a BGR to BGRA conversion.
 */
struct RGBPixel {
    std::uint8_t blue;
    std::uint8_t green;
    std::uint8_t red;
    std::uint8_t alpha;
};

/*
 * The host sizes its buffers from BYTES_PER_PIXEL because it cannot include
 * this header.  If the two ever disagree the host would feed the kernel
 * misaligned data and the output would be silently wrong, so fail the build
 * here instead.
 */
static_assert(
    sizeof(RGBPixel) == BYTES_PER_PIXEL,
    "RGBPixel size must match BYTES_PER_PIXEL in config.h"
);

enum class GradientDirection : std::uint8_t {
    DEG_0 = 0,
    DEG_45 = 1,
    DEG_90 = 2,
    DEG_135 = 3
};

struct GradientPixel {
    std::uint16_t magnitude;
    GradientDirection direction;
};

#endif
