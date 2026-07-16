#include <array>
#include <cstdint>
#include <iostream>

#include "canny_stages.h"

int main() {
    std::array<RGBPixel, WIDTH> input{};
    std::array<std::uint8_t, WIDTH> output{};

    input[0] = {0, 0, 0};
    input[1] = {255, 255, 255};
    input[2] = {255, 0, 0};
    input[3] = {0, 255, 0};
    input[4] = {0, 0, 255};

    grayscale(input.data(), output.data());

    const std::array<std::uint8_t, 5> expected = {
        0,
        255,
        76,
        149,
        28
    };

    int failures = 0;

    for (std::size_t index = 0;
         index < expected.size();
         ++index) {

        if (output[index] != expected[index]) {
            std::cerr
                << "Mismatch at pixel "
                << index
                << ": expected "
                << static_cast<int>(expected[index])
                << ", received "
                << static_cast<int>(output[index])
                << '\n';

            ++failures;
        }
    }

    for (int index = 5; index < WIDTH; ++index) {
        if (output[index] != 0) {
            std::cerr
                << "Unexpected nonzero output at pixel "
                << index
                << '\n';

            ++failures;
        }
    }

    if (failures != 0) {
        std::cerr
            << "Grayscale test FAILED with "
            << failures
            << " error(s).\n";

        return 1;
    }

    std::cout << "Grayscale test PASSED.\n";
    return 0;
}
