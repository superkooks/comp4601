#include <cstdint>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "pipeline_reference.h"

namespace {

void build_frame(std::vector<RGBPixel>& image, int pattern) {
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            RGBPixel pixel{};

            if (pattern == 0) {
                pixel.blue = static_cast<std::uint8_t>(
                    (row * 9 + column * 5 + 17) % 256
                );
                pixel.green = static_cast<std::uint8_t>(
                    (row * 3 + column * 13 + 41) % 256
                );
                pixel.red = static_cast<std::uint8_t>(
                    (row * 15 + column * 7 + 73) % 256
                );

                if (
                    row > HEIGHT / 4 && row < 3 * HEIGHT / 4 &&
                    column > WIDTH / 4 && column < 3 * WIDTH / 4
                ) {
                    pixel = {240, 40, 220};
                }
            }
            else {
                const bool checker =
                    ((row / 16) + (column / 16)) % 2 == 0;
                const std::uint8_t value = checker ? 230 : 25;
                pixel = {value, value, value};

                if (column >= row - 2 && column <= row + 2) {
                    pixel = {0, 255, 255};
                }
            }

            image[row * WIDTH + column] = pixel;
        }
    }
}

int compare_frame(
    const std::vector<std::uint8_t>& expected,
    const std::vector<std::uint8_t>& actual,
    const char* label
) {
    int mismatches = 0;

    for (int index = 0; index < HEIGHT * WIDTH; ++index) {
        if (expected[index] != actual[index]) {
            if (mismatches < 10) {
                std::cerr
                    << label << " mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << static_cast<int>(expected[index])
                    << ", received " << static_cast<int>(actual[index])
                    << '\n';
            }
            ++mismatches;
        }
    }

    return mismatches;
}

}

int test_optimized_pipeline() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<RGBPixel> frameOne(pixelCount);
    std::vector<RGBPixel> frameTwo(pixelCount);
    std::vector<std::uint8_t> expectedOne(pixelCount, 0);
    std::vector<std::uint8_t> expectedTwo(pixelCount, 0);
    std::vector<std::uint8_t> actualOne(pixelCount, 0xA5);
    std::vector<std::uint8_t> actualTwo(pixelCount, 0x5A);

    build_frame(frameOne, 0);
    build_frame(frameTwo, 1);

    canny_reference(frameOne.data(), expectedOne.data());
    canny_reference(frameTwo.data(), expectedTwo.data());

    // Two consecutive calls verify that every static line buffer is reset
    // correctly and that one frame cannot contaminate the next frame.
    canny_top(frameOne.data(), actualOne.data());
    canny_top(frameTwo.data(), actualTwo.data());

    const int frameOneMismatches = compare_frame(
        expectedOne,
        actualOne,
        "Optimized frame 1"
    );

    const int frameTwoMismatches = compare_frame(
        expectedTwo,
        actualTwo,
        "Optimized frame 2"
    );

    std::cout
        << "Optimized repeated-frame pixels tested: "
        << 2 * pixelCount << '\n';
    std::cout
        << "Optimized frame 1 mismatches: "
        << frameOneMismatches << '\n';
    std::cout
        << "Optimized frame 2 mismatches: "
        << frameTwoMismatches << '\n';

    if (frameOneMismatches != 0 || frameTwoMismatches != 0) {
        std::cerr << "Optimized repeated-frame test FAILED.\n";
        return 1;
    }

    std::cout << "Optimized repeated-frame test PASSED.\n";
    return 0;
}
