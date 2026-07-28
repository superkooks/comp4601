#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "pipeline_reference.h"

int test_pipeline() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<RGBPixel> input(pixelCount);
    std::vector<std::uint8_t> expected(pixelCount, 0);
    std::vector<std::uint8_t> actual(pixelCount, 0xA5);

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            RGBPixel pixel{};
            pixel.blue = static_cast<std::uint8_t>(
                (row * 3 + column * 7) % 256
            );
            pixel.green = static_cast<std::uint8_t>(
                (row * 5 + column * 2) % 256
            );
            pixel.red = static_cast<std::uint8_t>(
                (row * 11 + column * 13) % 256
            );

            if (
                row >= 80 && row < 220 &&
                column >= 70 && column < 250
            ) {
                pixel = {20, 220, 240};
            }

            if (
                row >= 280 && row < 430 &&
                column >= 300 && column < 450
            ) {
                pixel = {240, 30, 20};
            }

            if (column > row - 3 && column < row + 3) {
                pixel = {255, 255, 255};
            }

            input[row * WIDTH + column] = pixel;
        }
    }

    canny_reference(input.data(), expected.data());
    canny_top(input.data(), actual.data());

    int mismatchCount = 0;
    int expectedEdges = 0;
    int actualEdges = 0;

    for (int index = 0; index < pixelCount; ++index) {
        expectedEdges += expected[index] == STRONG_EDGE ? 1 : 0;
        actualEdges += actual[index] == STRONG_EDGE ? 1 : 0;

        if (expected[index] != actual[index]) {
            if (mismatchCount < 20) {
                std::cerr
                    << "Pipeline mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << static_cast<int>(expected[index])
                    << ", received " << static_cast<int>(actual[index])
                    << '\n';
            }
            ++mismatchCount;
        }
    }

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Expected edge pixels: " << expectedEdges << '\n';
    std::cout << "Actual edge pixels: " << actualEdges << '\n';
    std::cout << "Pipeline mismatches: " << mismatchCount << '\n';

    if (expectedEdges == 0 || actualEdges == 0 || mismatchCount != 0) {
        std::cerr << "Full pipeline test FAILED.\n";
        return 1;
    }

    std::cout << "Full pipeline test PASSED.\n";
    return 0;
}
