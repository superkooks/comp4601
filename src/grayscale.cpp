#include "canny_stages.h"

void grayscale(
    const RGBPixel input[WIDTH],
    std::uint8_t output[WIDTH]
) {
    for (int column = 0; column < WIDTH; ++column) {
        const unsigned int gray =
            77U * input[column].red +
            150U * input[column].green +
            29U * input[column].blue;

        output[column] =
            static_cast<std::uint8_t>(gray >> 8);
    }
}
