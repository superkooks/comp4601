#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "sobel_reference.h"

namespace {

const char* direction_name(GradientDirection direction) {
    switch (direction) {
        case GradientDirection::DEG_0:
            return "0";
        case GradientDirection::DEG_45:
            return "45";
        case GradientDirection::DEG_90:
            return "90";
        case GradientDirection::DEG_135:
            return "135";
    }

    return "unknown";
}

}

int test_sobel() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> input(pixelCount, 0);
    std::vector<GradientPixel> expected(
        pixelCount,
        {0, GradientDirection::DEG_0}
    );
    std::vector<GradientPixel> actual(
        pixelCount,
        {0, GradientDirection::DEG_0}
    );

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            int value = (row * 3 + column * 5) % 80;

            if (column >= WIDTH / 2) {
                value += 80;
            }
            if (row >= HEIGHT / 2) {
                value += 60;
            }
            if (column >= row) {
                value += 35;
            }

            input[row * WIDTH + column] =
                static_cast<std::uint8_t>(std::min(value, 255));
        }
    }

    sobel_reference(input.data(), expected.data());
    sobel_reset();

    GradientPixel producedRow[WIDTH] = {};
    std::uint8_t flushRow[WIDTH] = {};
    bool invalidResult = true;
    sobel(flushRow, producedRow, false, &invalidResult);

    int validFailures = invalidResult ? 1 : 0;
    int outputRows = 0;

    for (int call = 0; call < HEIGHT + 1; ++call) {
        bool valid = true;
        const std::uint8_t* inputRow =
            call < HEIGHT
                ? input.data() + call * WIDTH
                : flushRow;

        sobel(inputRow, producedRow, true, &valid);

        const bool expectedValid = call >= 1;
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

    int magnitudeMismatches = 0;
    int directionMismatches = 0;
    int maximumMagnitudeError = 0;

    for (int index = 0; index < pixelCount; ++index) {
        const int error = std::abs(
            static_cast<int>(expected[index].magnitude) -
            static_cast<int>(actual[index].magnitude)
        );

        if (error != 0) {
            if (magnitudeMismatches < 10) {
                std::cerr
                    << "Magnitude mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << expected[index].magnitude
                    << ", received " << actual[index].magnitude
                    << '\n';
            }

            ++magnitudeMismatches;
            maximumMagnitudeError =
                std::max(maximumMagnitudeError, error);
        }

        if (expected[index].direction != actual[index].direction) {
            if (directionMismatches < 10) {
                std::cerr
                    << "Direction mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected "
                    << direction_name(expected[index].direction)
                    << ", received "
                    << direction_name(actual[index].direction)
                    << '\n';
            }

            ++directionMismatches;
        }
    }

    if (outputRows != HEIGHT) {
        ++validFailures;
    }

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Magnitude mismatches: " << magnitudeMismatches << '\n';
    std::cout << "Direction mismatches: " << directionMismatches << '\n';
    std::cout << "Maximum magnitude error: " << maximumMagnitudeError << '\n';
    std::cout << "Valid-timing failures: " << validFailures << '\n';

    if (
        magnitudeMismatches != 0 ||
        directionMismatches != 0 ||
        validFailures != 0
    ) {
        std::cerr << "Sobel test FAILED.\n";
        return 1;
    }

    std::cout << "Sobel test PASSED.\n";
    return 0;
}
