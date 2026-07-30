#include "canny_stages.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    for (int column = 0; column < WIDTH; ++column) {
#pragma HLS PIPELINE II=1
        const std::uint32_t red = input[column].red;
        const std::uint32_t green = input[column].green;
        const std::uint32_t blue = input[column].blue;

        // Exact shift-add forms of 77, 150 and 29. This preserves the
        // original fixed-point result while avoiding multiplier bottlenecks.
        const std::uint32_t redTerm =
            (red << 6) + (red << 3) + (red << 2) + red;

        const std::uint32_t greenTerm =
            (green << 7) + (green << 4) + (green << 2) + (green << 1);

        const std::uint32_t blueTerm =
            (blue << 4) + (blue << 3) + (blue << 2) + blue;

        output[column] = static_cast<std::uint8_t>(
            (redTerm + greenTerm + blueTerm) >> 8
        );
    }
}
