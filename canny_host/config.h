#ifndef CONFIG_H
#define CONFIG_H

#include <cstdint>

constexpr int WIDTH = 512;
constexpr int HEIGHT = 512;

/*
 * Size of one input pixel in bytes.  Must match sizeof(RGBPixel), which
 * canny_types.h asserts.  The host cannot include canny_types.h, so it sizes
 * its buffers from this constant instead.  Four rather than three so that
 * pixels are power-of-two aligned and the AXI master can widen its reads.
 */
constexpr int BYTES_PER_PIXEL = 4;

constexpr std::uint8_t LOW_THRESHOLD = 20;
constexpr std::uint8_t HIGH_THRESHOLD = 80;

constexpr std::uint8_t NON_EDGE = 0;
constexpr std::uint8_t WEAK_EDGE = 128;
constexpr std::uint8_t STRONG_EDGE = 255;

#endif
