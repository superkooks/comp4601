#include "canny_stages.h"

void grayscale(
    hls::burst_maxi<ap_uint<512>> input,
    hls::stream<std::uint8_t> &output
) {
    for (int row = 0; row < HEIGHT; ++row) {
        ap_uint<512> row_words[WIDTH * 3 / 64];
        std::uint8_t row_bytes[WIDTH * 3];

        // Manually burst the row out of gmem at the port's full 512-bit width.
        // A manual burst won't be widened automatically, so we use ap_uint<512> then unpack it.
        size_t row_word_offset =
            static_cast<size_t>(row * WIDTH) * sizeof(RGBPixel) / 64;
        input.read_request(row_word_offset, WIDTH * 3 / 64);

        burst_read: for (int w = 0; w < WIDTH * 3 / 64; ++w) {
            #pragma HLS PIPELINE II=1
            row_words[w] = input.read();
        }

        // Pixel boundaries don't align to 64-byte word boundaries (64 isn't a multiple of 3),
        // so unpack through a flat byte array first.
        unpack_bytes: for (int w = 0; w < WIDTH * 3 / 64; ++w) {
            #pragma HLS PIPELINE II=1
            for (int b = 0; b < 64; ++b) {
                #pragma HLS UNROLL
                row_bytes[w * 64 + b] = row_words[w].range(b * 8 + 7, b * 8);
            }
        }

        unpack_pixels: for (int column = 0; column < WIDTH; ++column) {
            #pragma HLS PIPELINE II=1

            RGBPixel pixel;
            pixel.blue  = row_bytes[column * 3 + 0];
            pixel.green = row_bytes[column * 3 + 1];
            pixel.red   = row_bytes[column * 3 + 2];

            const unsigned int gray =
                77U * pixel.red +
                150U * pixel.green +
                29U * pixel.blue;

            output.write(static_cast<std::uint8_t>(gray >> 8));
        }
    }
}
