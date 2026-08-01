#include <cstdint>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "hls_stream.h"
#include "hls_burst_maxi.h"
#include "ap_int.h"

int test_grayscale() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<RGBPixel> input(pixelCount, RGBPixel{0, 0, 0});

    input[0] = {0, 0, 0};
    input[1] = {255, 255, 255};
    input[2] = {0, 0, 255};
    input[3] = {0, 255, 0};
    input[4] = {255, 0, 0};
    input[5] = {10, 20, 30};

    hls::burst_maxi<ap_uint<512>> input_port(
        reinterpret_cast<ap_uint<512> *>(input.data()));

    hls::stream<std::uint8_t> output;
    grayscale(input_port, output);

    const std::uint8_t expected[6] = {0, 255, 76, 149, 28, 21};

    int failures = 0;

    for (int i = 0; i < pixelCount; ++i) {
        const std::uint8_t value = output.read();

        const int row = i / WIDTH;
        const int column = i % WIDTH;

        // Row 0 holds the six test samples; every other row is zero.
        const std::uint8_t expectedValue =
            (row == 0 && column < 6) ? expected[column] : 0;

        if (value != expectedValue) {
            if (failures < 20) {
                std::cerr
                    << "Mismatch at pixel " << i
                    << ": expected " << static_cast<int>(expectedValue)
                    << ", received " << static_cast<int>(value)
                    << '\n';
            }
            ++failures;
        }
    }

    if (failures != 0) {
        std::cerr
            << "Grayscale test FAILED with "
            << failures << " error(s).\n";
        return 1;
    }

    std::cout << "Grayscale test PASSED.\n";
    return 0;
}
