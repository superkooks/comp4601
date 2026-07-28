#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "gaussian_reference.h"

int test_gaussian() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> input(pixelCount, 0);
    std::vector<std::uint8_t> expected(pixelCount, 0);
    std::vector<std::uint8_t> actual(pixelCount, 0);

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            input[row * WIDTH + column] =
                static_cast<std::uint8_t>(
                    (row * 5 + column * 3 + (row ^ column)) % 256
                );
        }
    }

    input[(HEIGHT / 2) * WIDTH + (WIDTH / 2)] = 255;

    gaussian_reference(input.data(), expected.data());
    gaussian_blur_reset();

    std::uint8_t producedRow[WIDTH] = {};
    std::uint8_t flushRow[WIDTH] = {};
    int outputRows = 0;
    int validFailures = 0;

    for (int call = 0; call < HEIGHT + 2; ++call) {
        bool valid = true;
        const std::uint8_t* inputRow =
            call < HEIGHT
                ? input.data() + call * WIDTH
                : flushRow;

        gaussian_blur(inputRow, producedRow, &valid);

        const bool expectedValid = call >= 2;
        if (valid != expectedValid) {
            ++validFailures;
        }

        if (valid) {
            if (outputRows >= HEIGHT) {
                ++validFailures;
                continue;
            }

            std::copy(
                producedRow,
                producedRow + WIDTH,
                actual.data() + outputRows * WIDTH
            );
            ++outputRows;
        }
    }

    int mismatchCount = 0;
    int maximumError = 0;

    for (int index = 0; index < pixelCount; ++index) {
        const int error = std::abs(
            static_cast<int>(expected[index]) -
            static_cast<int>(actual[index])
        );

        if (error != 0) {
            if (mismatchCount < 10) {
                std::cerr
                    << "Mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << static_cast<int>(expected[index])
                    << ", received " << static_cast<int>(actual[index])
                    << '\n';
            }

            ++mismatchCount;
            maximumError = std::max(maximumError, error);
        }
    }

    if (outputRows != HEIGHT) {
        ++validFailures;
    }

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Mismatches: " << mismatchCount << '\n';
    std::cout << "Maximum absolute error: " << maximumError << '\n';
    std::cout << "Valid-timing failures: " << validFailures << '\n';

    if (mismatchCount != 0 || validFailures != 0) {
        std::cerr << "Gaussian blur test FAILED.\n";
        return 1;
    }

    std::cout << "Gaussian blur test PASSED.\n";
    return 0;
}
