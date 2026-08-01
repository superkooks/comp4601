#ifndef CANNY_STAGES_H
#define CANNY_STAGES_H

#include <cstdint>

#include "config.h"
#include "canny_types.h"
#include "hls_burst_maxi.h"
#include "hls_stream.h"
#include "ap_int.h"

/*
 * Every stage below reads exactly HEIGHT rows and emits exactly HEIGHT rows:
 * there is no more cross-stage padding to keep track of. gaussian_blur,
 * sobel, non_maximum_suppression and hysteresis each need a couple of rows
 * of vertical look-ahead before they can emit their own first valid output
 * row, and correspondingly still owe a couple of trailing output rows once
 * their real input runs out -- but reflect_101/border_replicate always
 * resolve those trailing rows by reflecting/replicating back into rows
 * already sitting in the stage's own line buffer, never by reading anything
 * new. So each stage handles its own trailing rows internally (advancing its
 * row counter without reading its input stream again) instead of relying on
 * an upstream neighbour to over-produce placeholder rows to feed it.
 */

void grayscale(
    hls::burst_maxi<ap_uint<512>> input,
    hls::stream<std::uint8_t> &output
);

void gaussian_blur(
    hls::stream<std::uint8_t> &input,
    hls::stream<std::uint8_t> &output
);

void sobel(
    hls::stream<std::uint8_t> &input,
    hls::stream<GradientPixel> &output
);

void non_maximum_suppression(
    hls::stream<GradientPixel> &input,
    hls::stream<std::uint16_t> &output
);

void double_threshold(
    hls::stream<std::uint16_t> &input,
    hls::stream<std::uint8_t> &output
);

template <int Instance>
void hysteresis(
    hls::stream<std::uint8_t> &input,
    hls::stream<std::uint8_t> &output,
    std::uint8_t resolve_weak
);

void write_frame(
    hls::stream<std::uint8_t> &input,
    uint8_t out[WIDTH*HEIGHT]
);

void canny_top(hls::burst_maxi<ap_uint<512>> in, uint8_t out[WIDTH*HEIGHT]);

#endif