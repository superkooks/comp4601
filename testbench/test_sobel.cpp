#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "sobel_reference.h"

static const char* direction_name(
    GradientDirection direction
) {
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

    /*
     * Create vertical, horizontal and diagonal intensity
     * variation so every direction is exercised.
     */
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            int value = 0;

            if (column >= WIDTH / 2) {
                value += 90;
            }

            if (row >= HEIGHT / 2) {
                value += 70;
            }

            if (column >= row) {
                value += 50;
            }

            if (value > 255) {
                value = 255;
            }

            input[row * WIDTH + column] =
                static_cast<std::uint8_t>(value);
        }
    }

    sobel_reference(
        input.data(),
        expected.data()
    );

    sobel_reset();

    GradientPixel producedRow[WIDTH] = {};
    std::uint8_t zeroRow[WIDTH] = {};

    for (int inputRow = 0;
         inputRow < HEIGHT;
         ++inputRow) {

        sobel(
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
     * Flush the final delayed output row.
     */
    sobel(zeroRow, producedRow);

    std::copy(
        producedRow,
        producedRow + WIDTH,
        actual.data() + (HEIGHT - 1) * WIDTH
    );

    int magnitudeMismatches = 0;
    int directionMismatches = 0;
    int maximumMagnitudeError = 0;

    for (int index = 0; index < pixelCount; ++index) {
        const int expectedMagnitude =
            static_cast<int>(
                expected[index].magnitude
            );

        const int actualMagnitude =
            static_cast<int>(
                actual[index].magnitude
            );

        const int magnitudeError =
            std::abs(
                expectedMagnitude -
                actualMagnitude
            );

        if (magnitudeError != 0) {
            if (magnitudeMismatches < 10) {
                const int row = index / WIDTH;
                const int column = index % WIDTH;

                std::cerr
                    << "Magnitude mismatch at row "
                    << row
                    << ", column "
                    << column
                    << ": expected "
                    << expectedMagnitude
                    << ", received "
                    << actualMagnitude
                    << '\n';
            }

            ++magnitudeMismatches;

            maximumMagnitudeError =
                std::max(
                    maximumMagnitudeError,
                    magnitudeError
                );
        }

        if (
            expected[index].direction !=
            actual[index].direction
        ) {
            if (directionMismatches < 10) {
                const int row = index / WIDTH;
                const int column = index % WIDTH;

                std::cerr
                    << "Direction mismatch at row "
                    << row
                    << ", column "
                    << column
                    << ": expected "
                    << direction_name(
                        expected[index].direction
                    )
                    << ", received "
                    << direction_name(
                        actual[index].direction
                    )
                    << '\n';
            }

            ++directionMismatches;
        }
    }

    std::cout
        << "Pixels tested: "
        << pixelCount
        << '\n';

    std::cout
        << "Magnitude mismatches: "
        << magnitudeMismatches
        << '\n';

    std::cout
        << "Direction mismatches: "
        << directionMismatches
        << '\n';

    std::cout
        << "Maximum magnitude error: "
        << maximumMagnitudeError
        << '\n';

    if (
        magnitudeMismatches != 0 ||
        directionMismatches != 0
    ) {
        std::cerr << "Sobel test FAILED.\n";
        return 1;
    }

    std::cout << "Sobel test PASSED.\n";
    return 0;
}
