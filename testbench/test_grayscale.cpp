#include <array>
#include <cstdint>
#include <iostream>

#include "canny_stages.h"

int test_grayscale() {
    std::array<RGBPixel, WIDTH> input{};
    std::array<std::uint8_t, WIDTH> output{};

    input[0] = {0, 0, 0};
    input[1] = {255, 255, 255};
    input[2] = {0, 0, 255};
    input[3] = {0, 255, 0};
    input[4] = {255, 0, 0};
    input[5] = {10, 20, 30};

    grayscale(input.data(), output.data());

    const std::array<std::uint8_t, 6> expected = {
        0,
        255,
        76,
        149,
        28,
        21
    };

    int failures = 0;

    for (std::size_t index = 0; index < expected.size(); ++index) {
        if (output[index] != expected[index]) {
            std::cerr
                << "Mismatch at pixel " << index
                << ": expected " << static_cast<int>(expected[index])
                << ", received " << static_cast<int>(output[index])
                << '\n';
            ++failures;
        }
    }

    for (int index = static_cast<int>(expected.size());
         index < WIDTH;
         ++index) {
        if (output[index] != 0) {
            std::cerr
                << "Unexpected nonzero output at pixel "
                << index << '\n';
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
