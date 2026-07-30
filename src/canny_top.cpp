#include "canny_stages.h"
#include "config.h"

void canny_top(
    RGBPixel input[WIDTH * HEIGHT],
    std::uint8_t output[WIDTH * HEIGHT]
) {
#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0 max_read_burst_length=64 num_read_outstanding=16
#pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem1 max_write_burst_length=64 num_write_outstanding=16
#pragma HLS INTERFACE s_axilite port=input bundle=control
#pragma HLS INTERFACE s_axilite port=output bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    reset_canny_stages();

    // Eight additional row calls flush the accumulated two-row Gaussian
    // delay and one-row delays in Sobel, NMS and each hysteresis pass.
    for (int row = 0; row < HEIGHT + 8; ++row) {
#pragma HLS DATAFLOW
#pragma HLS LOOP_TRIPCOUNT min=520 max=520
        std::uint8_t grayscaleRow[WIDTH];
        std::uint8_t gaussianRow[WIDTH];
        GradientPixel sobelRow[WIDTH];
        std::uint16_t nmsRow[WIDTH];
        std::uint8_t thresholdRow[WIDTH];
        std::uint8_t hysteresisRow1[WIDTH];
        std::uint8_t hysteresisRow2[WIDTH];
        std::uint8_t hysteresisRow3[WIDTH];
        std::uint8_t hysteresisRow4[WIDTH];

        bool gaussianValid = false;
        bool sobelValid = false;
        bool nmsValid = false;
        bool thresholdValid = false;
        bool hysteresisValid1 = false;
        bool hysteresisValid2 = false;
        bool hysteresisValid3 = false;
        bool hysteresisValid4 = false;

        const int inputOffset = row < HEIGHT ? row * WIDTH : 0;

        grayscale(&input[inputOffset], grayscaleRow);
        gaussian_blur(grayscaleRow, gaussianRow, &gaussianValid);
        sobel(gaussianRow, sobelRow, gaussianValid, &sobelValid);
        non_maximum_suppression(sobelRow, nmsRow, sobelValid, &nmsValid);
        double_threshold(nmsRow, thresholdRow, nmsValid, &thresholdValid);

        hysteresis<1>(
            thresholdRow,
            hysteresisRow1,
            thresholdValid,
            &hysteresisValid1,
            WEAK_EDGE
        );

        hysteresis<2>(
            hysteresisRow1,
            hysteresisRow2,
            hysteresisValid1,
            &hysteresisValid2,
            WEAK_EDGE
        );

        hysteresis<3>(
            hysteresisRow2,
            hysteresisRow3,
            hysteresisValid2,
            &hysteresisValid3,
            WEAK_EDGE
        );

        hysteresis<4>(
            hysteresisRow3,
            hysteresisRow4,
            hysteresisValid3,
            &hysteresisValid4,
            NON_EDGE
        );

        output_row(hysteresisRow4, output, hysteresisValid4);
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
