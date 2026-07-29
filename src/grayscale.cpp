#include <cstring>

#include "canny_stages.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    /*
     * Copy the row in as one contiguous block before touching any pixel.
     * Reading pixels straight off the port cannot be widened: a pixel is three
     * bytes, so consecutive pixels sit at three byte offsets and only the first
     * is aligned to more than a byte, which held the loop at II=3.  A flat
     * block copy has no such stride, and each row starts at a multiple of
     * 1536 bytes, which is 64 byte aligned, so it can burst at the full port
     * width.  The arithmetic then reads local memory at one pixel per cycle.
     */
    RGBPixel local[WIDTH];

    std::memcpy(local, input, WIDTH * sizeof(RGBPixel));

    for (int column = 0; column < WIDTH; ++column) {
        #pragma HLS PIPELINE II=1

        const RGBPixel pixel = local[column];

        const unsigned int gray =
            77U * pixel.red +
            150U * pixel.green +
            29U * pixel.blue;

        output[column] =
            static_cast<std::uint8_t>(gray >> 8);
    }
}
