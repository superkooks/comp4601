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
    std::uint8_t magnitude
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

    std::vector<std::uint8_t> expected(pixelCount, 0);
    std::vector<std::uint8_t> actual(pixelCount, 0);

    /*
     * Create a deterministic gradient image containing all
     * four direction values.
     */
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            const int index = row * WIDTH + column;

            input[index].magnitude =
                static_cast<std::uint8_t>(
                    (row * 17 + column * 11) % 256
                );

            input[index].direction =
                direction_from_index(row + column);
        }
    }

    /*
     * Explicit 0-degree example: keep the centre.
     */
    input[100 * WIDTH + 100].direction =
        GradientDirection::DEG_0;

    set_magnitude(input, 100, 99, 100);
    set_magnitude(input, 100, 100, 200);
    set_magnitude(input, 100, 101, 150);

    /*
     * Explicit 45-degree example: suppress the centre.
     */
    input[120 * WIDTH + 120].direction =
        GradientDirection::DEG_45;

    set_magnitude(input, 119, 119, 130);
    set_magnitude(input, 120, 120, 120);
    set_magnitude(input, 121, 121, 110);

    /*
     * Explicit 90-degree example: keep an equal maximum.
     */
    input[140 * WIDTH + 140].direction =
        GradientDirection::DEG_90;

    set_magnitude(input, 139, 140, 170);
    set_magnitude(input, 140, 140, 180);
    set_magnitude(input, 141, 140, 180);

    /*
     * Explicit 135-degree example: suppress the centre.
     */
    input[160 * WIDTH + 160].direction =
        GradientDirection::DEG_135;

    set_magnitude(input, 159, 161, 80);
    set_magnitude(input, 160, 160, 90);
    set_magnitude(input, 161, 159, 100);

    non_maximum_suppression_reference(
        input.data(),
        expected.data()
    );

    non_maximum_suppression_reset();

    GradientPixel zeroRow[WIDTH] = {};
    std::uint8_t producedRow[WIDTH] = {};

    for (int inputRow = 0;
         inputRow < HEIGHT;
         ++inputRow) {

        non_maximum_suppression(
            input.data() + inputRow * WIDTH,
            producedRow
        );

        const int outputRow = inputRow - 1;

        if (outputRow >= 0 && outputRow < HEIGHT) {
            std::copy(
                producedRow,
                producedRow + WIDTH,
                actual.data() + outputRow * WIDTH
            );
        }
    }

    /*
     * Flush the final delayed row.
     */
    non_maximum_suppression(
        zeroRow,
        producedRow
    );

    std::copy(
        producedRow,
        producedRow + WIDTH,
        actual.data() + (HEIGHT - 1) * WIDTH
    );

    int mismatchCount = 0;
    int maximumError = 0;

    for (int index = 0; index < pixelCount; ++index) {
        const int expectedValue =
            static_cast<int>(expected[index]);

        const int actualValue =
            static_cast<int>(actual[index]);

        const int error =
            std::abs(expectedValue - actualValue);

        if (error != 0) {
            if (mismatchCount < 10) {
                const int row = index / WIDTH;
                const int column = index % WIDTH;

                std::cerr
                    << "Mismatch at row "
                    << row
                    << ", column "
                    << column
                    << ": expected "
                    << expectedValue
                    << ", received "
                    << actualValue
                    << '\n';
            }

            ++mismatchCount;
            maximumError =
                std::max(maximumError, error);
        }
    }

    int manualCheckFailures = 0;

    if (actual[100 * WIDTH + 100] != 200) {
        std::cerr << "0-degree manual check failed.\n";
        ++manualCheckFailures;
    }

    if (actual[120 * WIDTH + 120] != 0) {
        std::cerr << "45-degree manual check failed.\n";
        ++manualCheckFailures;
    }

    if (actual[140 * WIDTH + 140] != 180) {
        std::cerr << "90-degree manual check failed.\n";
        ++manualCheckFailures;
    }

    if (actual[160 * WIDTH + 160] != 0) {
        std::cerr << "135-degree manual check failed.\n";
        ++manualCheckFailures;
    }

    std::cout
        << "Pixels tested: "
        << pixelCount
        << '\n';

    std::cout
        << "Mismatches: "
        << mismatchCount
        << '\n';

    std::cout
        << "Maximum absolute error: "
        << maximumError
        << '\n';

    std::cout
        << "Manual direction-check failures: "
        << manualCheckFailures
        << '\n';

    if (
        mismatchCount != 0 ||
        manualCheckFailures != 0
    ) {
        std::cerr
            << "Non-maximum suppression test FAILED.\n";

        return 1;
    }

    std::cout
        << "Non-maximum suppression test PASSED.\n";

    return 0;
}
