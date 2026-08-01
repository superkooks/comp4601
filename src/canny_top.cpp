#include "canny_stages.h"
#include "config.h"
#include "hls_burst_maxi.h"
#include "hls_stream.h"
#include "ap_int.h"

// Manually configure the AXI-M burst, so we can transfer data quicker.
// More info in grayscale.cpp. Output is already widened automatically.
void canny_top(hls::burst_maxi<ap_uint<512>> in, uint8_t out[WIDTH*HEIGHT]) {
    #pragma HLS INTERFACE m_axi port=in depth=12288 bundle=gmem0 max_read_burst_length=32 num_read_outstanding=4
    #pragma HLS INTERFACE m_axi port=out bundle=gmem max_write_burst_length=8 num_write_outstanding=4

    #pragma HLS DATAFLOW

    hls::stream<std::uint8_t> gray_out;
    hls::stream<std::uint8_t> gauss_out;
    hls::stream<GradientPixel> sobel_out;
    hls::stream<std::uint16_t> nms_out;
    hls::stream<std::uint8_t> thresh_out;
    hls::stream<std::uint8_t> hyst1_out, hyst2_out, hyst3_out, hyst4_out;

    // Two rows deep so each stage can get a row ahead of the next stage
    constexpr int STREAM_DEPTH = WIDTH * 2;

    #pragma HLS STREAM variable=gray_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=gauss_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=sobel_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=nms_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=thresh_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=hyst1_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=hyst2_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=hyst3_out depth=STREAM_DEPTH
    #pragma HLS STREAM variable=hyst4_out depth=STREAM_DEPTH

    grayscale(in, gray_out);
    gaussian_blur(gray_out, gauss_out);
    sobel(gauss_out, sobel_out);
    non_maximum_suppression(sobel_out, nms_out);
    double_threshold(nms_out, thresh_out);
    hysteresis<1>(thresh_out, hyst1_out, WEAK_EDGE);
    hysteresis<2>(hyst1_out, hyst2_out, WEAK_EDGE);
    hysteresis<3>(hyst2_out, hyst3_out, WEAK_EDGE);
    hysteresis<4>(hyst3_out, hyst4_out, NON_EDGE);
    write_frame(hyst4_out, out);
}
