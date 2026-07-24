#include "canny_stages.h"

// static void hysteresis1(uint8_t in[WIDTH], uint8_t out[WIDTH], bool in_v, bool *out_v) { hysteresis(in, out, in_v, out_v); }
// static void hysteresis2(uint8_t in[WIDTH], uint8_t out[WIDTH], bool in_v, bool *out_v) { hysteresis(in, out, in_v, out_v); }
// static void hysteresis3(uint8_t in[WIDTH], uint8_t out[WIDTH], bool in_v, bool *out_v) { hysteresis(in, out, in_v, out_v); }
// static void hysteresis4(uint8_t in[WIDTH], uint8_t out[WIDTH], bool in_v, bool *out_v) { hysteresis(in, out, in_v, out_v); }

void canny_top(struct RGBPixel in[WIDTH*HEIGHT], uint8_t out[WIDTH*HEIGHT]) {
    reset_canny_stages();

    for (int i = 0; i < HEIGHT+2; i++) {
        #pragma HLS DATAFLOW
        uint8_t out_grayscale[WIDTH];
        uint8_t out_gaussian[WIDTH];
        struct GradientPixel out_sobel[WIDTH];
        uint8_t out_nonmax[WIDTH];
        uint8_t out_double[WIDTH];
        uint8_t out_hysteresis1[WIDTH], out_hysteresis2[WIDTH], out_hysteresis3[WIDTH], out_hysteresis4[WIDTH];
        bool gaussian_valid;
        bool sobel_valid;
        bool nonmax_valid;
        bool double_valid;
        bool hysteresis1_valid, hysteresis2_valid, hysteresis3_valid, hysteresis4_valid;

        int pix_idx = i < HEIGHT ? i*WIDTH : 0;

        grayscale(&in[pix_idx], out_grayscale);
        // output_row(out_grayscale, out, true);
        gaussian_blur(out_grayscale, out_gaussian, &gaussian_valid);
        sobel(out_gaussian, out_sobel, gaussian_valid, &sobel_valid);
        non_maximum_suppression(out_sobel, out_nonmax, sobel_valid, &nonmax_valid);
        double_threshold(out_nonmax, out_double, nonmax_valid, &double_valid);
        hysteresis<1>(out_double, out_hysteresis1, double_valid, &hysteresis1_valid);
        hysteresis<2>(out_hysteresis1, out_hysteresis2, hysteresis1_valid, &hysteresis2_valid);
        hysteresis<3>(out_hysteresis2, out_hysteresis3, hysteresis2_valid, &hysteresis3_valid);
        hysteresis<4>(out_hysteresis3, out_hysteresis4, hysteresis3_valid, &hysteresis4_valid);
        output_row(out_hysteresis4, out, hysteresis4_valid);
    }
}

void reset_canny_stages() {
    gaussian_blur_reset();
    sobel_reset();
    non_maximum_suppression_reset();
    hysteresis_reset<1>();
    hysteresis_reset<2>();
    hysteresis_reset<3>();
    hysteresis_reset<4>();
    output_row_reset();
}
