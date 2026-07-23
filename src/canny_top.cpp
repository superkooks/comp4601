#include "canny_stages.h"

void canny_top(struct RGBPixel in[WIDTH*HEIGHT], uint8_t out[WIDTH*HEIGHT]) {
    #pragma HLS INTERFACE m_axi port=in bundle=gmem_in
    #pragma HLS INTERFACE m_axi port=out bundle=gmem_out

    for (int i = 0; i < HEIGHT+2; i++) {
        #pragma HLS DATAFLOW
        uint8_t out_grayscale[WIDTH];
        uint8_t out_gaussian[WIDTH];
        struct GradientPixel out_sobel[WIDTH];
        uint8_t out_nonmax[WIDTH];
        uint8_t out_double[WIDTH];
        uint8_t out_hysteresis[WIDTH];
        bool gaussian_valid;
        bool sobel_valid;
        bool nonmax_valid;
        bool double_valid;
        bool hysteresis_valid;

        int pix_idx = i < HEIGHT ? i*WIDTH : 0;

        grayscale(&in[pix_idx], out_grayscale);
        gaussian_blur(out_grayscale, out_gaussian, &gaussian_valid);
        sobel(out_gaussian, out_sobel, gaussian_valid, &sobel_valid);
        non_maximum_suppression(out_sobel, out_nonmax, sobel_valid, &nonmax_valid);
        double_threshold(out_nonmax, out_double, nonmax_valid, &double_valid);
        hysteresis(out_double, out_hysteresis, double_valid, &hysteresis_valid);
        output_row(out_hysteresis, out, hysteresis_valid);
    }
}
