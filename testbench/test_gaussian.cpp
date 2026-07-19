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

    /*
     * Deterministic test image containing variation in both
     * horizontal and vertical directions.
     */
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            input[row * WIDTH + column] =
                static_cast<std::uint8_t>(
                    (row * 5 + column * 3) % 256
                );
        }
    }

    // Add an impulse near the centre.
    input[(HEIGHT / 2) * WIDTH + (WIDTH / 2)] = 255;

    gaussian_reference(
        input.data(),
        expected.data()
    );

    gaussian_blur_reset();

    std::uint8_t outputRowBuffer[WIDTH] = {};
    std::uint8_t zeroRow[WIDTH] = {};

    /*
     * Feed one real row per invocation.
     */
    for (int inputRow = 0;
         inputRow < HEIGHT;
         ++inputRow) {

        gaussian_blur(
            input.data() + inputRow * WIDTH,
            outputRowBuffer
        );

        const int outputRow = inputRow - 2;

        if (outputRow >= 0 && outputRow < HEIGHT) {
            std::copy(
                outputRowBuffer,
                outputRowBuffer + WIDTH,
                actual.data() + outputRow * WIDTH
            );
        }
    }

    /*
     * Flush the two delayed bottom rows.
     */
    for (int flushIndex = 0;
         flushIndex < 2;
         ++flushIndex) {

        gaussian_blur(
            zeroRow,
            outputRowBuffer
        );

        const int outputRow =
            HEIGHT + flushIndex - 2;

        if (outputRow >= 0 && outputRow < HEIGHT) {
            std::copy(
                outputRowBuffer,
                outputRowBuffer + WIDTH,
                actual.data() + outputRow * WIDTH
            );
        }
    }

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

    if (mismatchCount != 0) {
        std::cerr << "Gaussian blur test FAILED.\n";
        return 1;
    }

    std::cout << "Gaussian blur test PASSED.\n";
    return 0;
}
