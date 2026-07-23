#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "hysteresis_reference.h"

namespace {

int image_index(int row, int column) {
    return row * WIDTH + column;
}

}

int test_hysteresis() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> input(
        pixelCount,
        NON_EDGE
    );

    std::vector<std::uint8_t> expected(
        pixelCount,
        NON_EDGE
    );

    std::vector<std::uint8_t> actual(
        pixelCount,
        NON_EDGE
    );

    // Strong edge must remain strong.
    input[image_index(50, 50)] = STRONG_EDGE;

    // Horizontal weak edge connected to a strong edge.
    input[image_index(100, 100)] = STRONG_EDGE;
    input[image_index(100, 101)] = WEAK_EDGE;

    // Vertical weak edge connected to a strong edge.
    input[image_index(150, 150)] = STRONG_EDGE;
    input[image_index(151, 150)] = WEAK_EDGE;

    // Diagonal weak edge connected to a strong edge.
    input[image_index(200, 200)] = STRONG_EDGE;
    input[image_index(201, 201)] = WEAK_EDGE;

    // Isolated weak edge must be removed.
    input[image_index(250, 250)] = WEAK_EDGE;

    /*
     * Local hysteresis chain:
     *
     * Pixel 301 directly touches the original strong edge,
     * so it is retained.
     *
     * Pixel 302 only touches a weak edge and is removed by
     * this single-pass local hysteresis implementation.
     */
    input[image_index(300, 300)] = STRONG_EDGE;
    input[image_index(300, 301)] = WEAK_EDGE;
    input[image_index(300, 302)] = WEAK_EDGE;

    /*
     * Additional deterministic values for broader testing.
     */
    for (int row = 350; row < 400; ++row) {
        for (int column = 50; column < 150; ++column) {
            const int selector =
                (row * 7 + column * 11) % 12;

            if (selector == 0) {
                input[image_index(row, column)] =
                    STRONG_EDGE;
            }
            else if (selector <= 3) {
                input[image_index(row, column)] =
                    WEAK_EDGE;
            }
        }
    }

    hysteresis_reference(
        input.data(),
        expected.data()
    );

    hysteresis_reset();

    std::uint8_t producedRow[WIDTH] = {};
    std::uint8_t zeroRow[WIDTH] = {};

    /*
     * Feed one thresholded image row at a time.
     */
    for (int inputRow = 0;
         inputRow < HEIGHT;
         ++inputRow) {

        hysteresis(
            input.data() + inputRow * WIDTH,
            producedRow
        );

        /*
         * Hysteresis has a one-row delay because it needs
         * the row below the centre row.
         */
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
    hysteresis(
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
                std::cerr
                    << "Mismatch at row "
                    << index / WIDTH
                    << ", column "
                    << index % WIDTH
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

    if (
        actual[image_index(50, 50)] !=
        STRONG_EDGE
    ) {
        std::cerr
            << "Strong-edge preservation check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(100, 101)] !=
        STRONG_EDGE
    ) {
        std::cerr
            << "Horizontal connection check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(151, 150)] !=
        STRONG_EDGE
    ) {
        std::cerr
            << "Vertical connection check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(201, 201)] !=
        STRONG_EDGE
    ) {
        std::cerr
            << "Diagonal connection check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(250, 250)] !=
        NON_EDGE
    ) {
        std::cerr
            << "Isolated weak-edge check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(300, 301)] !=
        STRONG_EDGE
    ) {
        std::cerr
            << "First chain-pixel check failed.\n";

        ++manualCheckFailures;
    }

    if (
        actual[image_index(300, 302)] !=
        NON_EDGE
    ) {
        std::cerr
            << "Local chain-limitation check failed.\n";

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
        << "Manual-check failures: "
        << manualCheckFailures
        << '\n';

    if (
        mismatchCount != 0 ||
        manualCheckFailures != 0
    ) {
        std::cerr << "Hysteresis test FAILED.\n";
        return 1;
    }

    std::cout << "Hysteresis test PASSED.\n";
    return 0;
}
