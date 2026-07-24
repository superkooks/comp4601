#ifndef CONFIG_H
#define CONFIG_H

#include <cstdint>

constexpr int WIDTH = 512;
constexpr int HEIGHT = 512;

constexpr std::uint8_t LOW_THRESHOLD = 20;
constexpr std::uint8_t HIGH_THRESHOLD = 80;

constexpr std::uint8_t NON_EDGE = 0;
constexpr std::uint8_t WEAK_EDGE = 128;
constexpr std::uint8_t STRONG_EDGE = 255;

#endif
