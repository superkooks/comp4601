#include "canny_stages.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    for (int column = 0; column < WIDTH; ++column) {
        #pragma HLS PIPELINE II=1

        /*
         * Fetch the whole pixel in one access.  Reading the colour fields as
         * separate statements issues one byte transfer each, which the tool
         * cannot coalesce into the port width.  Combined with the four byte
         * pixel this becomes a single aligned 32 bit read per iteration.
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
