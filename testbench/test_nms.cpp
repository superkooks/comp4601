#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "nms_reference.h"

namespace {

GradientDirection direction_from_index(int value) {
    switch (value % 4) {
        case 0:
            return GradientDirection::DEG_0;
        case 1:
            return GradientDirection::DEG_45;
        case 2:
            return GradientDirection::DEG_90;
        default:
            return GradientDirection::DEG_135;
    }
}

void set_magnitude(
    std::vector<GradientPixel>& image,
    int row,
    int column,
    std::uint16_t magnitude
) {
    image[row * WIDTH + column].magnitude = magnitude;
}

}

int test_nms() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<GradientPixel> input(
        pixelCount,
        {0, GradientDirection::DEG_0}
    );
    std::vector<std::uint16_t> expected(pixelCount, 0);
    std::vector<std::uint16_t> actual(pixelCount, 0);

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index = row * WIDTH + column;
            input[index].magnitude =
                static_cast<std::uint16_t>(
                    (row * 37 + column * 23) % 2041
                );
            input[index].direction =
                direction_from_index(row + column);
        }
    }

    input[100 * WIDTH + 100].direction = GradientDirection::DEG_0;
    set_magnitude(input, 100, 99, 100);
    set_magnitude(input, 100, 100, 200);
    set_magnitude(input, 100, 101, 150);

    input[120 * WIDTH + 120].direction = GradientDirection::DEG_45;
    set_magnitude(input, 119, 119, 130);
    set_magnitude(input, 120, 120, 120);
    set_magnitude(input, 121, 121, 110);

    input[140 * WIDTH + 140].direction = GradientDirection::DEG_90;
    set_magnitude(input, 139, 140, 180);
    set_magnitude(input, 140, 140, 180);
    set_magnitude(input, 141, 140, 180);

    input[160 * WIDTH + 160].direction = GradientDirection::DEG_135;
    set_magnitude(input, 159, 161, 80);
    set_magnitude(input, 160, 160, 90);
    set_magnitude(input, 161, 159, 100);

    non_maximum_suppression_reference(
        input.data(),
        expected.data()
    );
    non_maximum_suppression_reset();

    GradientPixel flushRow[WIDTH] = {};
    std::uint16_t producedRow[WIDTH] = {};
    bool invalidResult = true;
    non_maximum_suppression(
        flushRow,
        producedRow,
        false,
        &invalidResult
    );

    int validFailures = invalidResult ? 1 : 0;
    int outputRows = 0;

    for (int call = 0; call < HEIGHT + 1; ++call) {
        bool valid = true;
        const GradientPixel* inputRow =
            call < HEIGHT
                ? input.data() + call * WIDTH
                : flushRow;

        non_maximum_suppression(
            inputRow,
            producedRow,
            true,
            &valid
        );

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
                    << ": expected " << expected[index]
                    << ", received " << actual[index]
                    << '\n';
            }

            ++mismatchCount;
            maximumError = std::max(maximumError, error);
        }
    }

    int manualFailures = 0;
    manualFailures += actual[100 * WIDTH + 100] == 200 ? 0 : 1;
    manualFailures += actual[120 * WIDTH + 120] == 0 ? 0 : 1;
    manualFailures += actual[140 * WIDTH + 140] == 180 ? 0 : 1;
    manualFailures += actual[160 * WIDTH + 160] == 0 ? 0 : 1;

    if (outputRows != HEIGHT) {
        ++validFailures;
    }

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Mismatches: " << mismatchCount << '\n';
    std::cout << "Maximum absolute error: " << maximumError << '\n';
    std::cout << "Manual-check failures: " << manualFailures << '\n';
    std::cout << "Valid-timing failures: " << validFailures << '\n';

    if (
        mismatchCount != 0 ||
        manualFailures != 0 ||
        validFailures != 0
    ) {
        std::cerr << "Non-maximum suppression test FAILED.\n";
        return 1;
    }

    std::cout << "Non-maximum suppression test PASSED.\n";
    return 0;
}
