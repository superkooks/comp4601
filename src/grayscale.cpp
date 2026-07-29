#include "canny_stages.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    for (int column = 0; column < WIDTH; ++column) {
        #pragma HLS PIPELINE II=1

        /*
         * Fetch the whole pixel in one access.  Reading the colour fields
         * directly from the port issued three separate byte transfers per
         * pixel, which the tool could not coalesce because a three byte pixel
         * is only one byte aligned, and that held the loop at II=3.
         */
        const RGBPixel pixel = input[column];

        const unsigned int gray =
            77U * pixel.red +
            150U * pixel.green +
            29U * pixel.blue;

        output[column] =
            static_cast<std::uint8_t>(gray >> 8);
    }
}
