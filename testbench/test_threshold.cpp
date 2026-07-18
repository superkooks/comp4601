#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "threshold_reference.h"

int main() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> input(pixelCount, 0);
    std::vector<std::uint8_t> expected(pixelCount, 0);
    std::vector<std::uint8_t> actual(pixelCount, 0);

    /*
     * Repeatedly test all possible 8-bit magnitude values.
     */
    for (int index = 0; index < pixelCount; ++index) {
        input[index] =
            static_cast<std::uint8_t>(index % 256);
    }

    /*
     * Explicit threshold-boundary cases.
     */
    input[0] = 0;
    input[1] = LOW_THRESHOLD - 1;
    input[2] = LOW_THRESHOLD;
    input[3] = HIGH_THRESHOLD - 1;
    input[4] = HIGH_THRESHOLD;
    input[5] = 255;

    double_threshold_reference(
        input.data(),
        expected.data()
    );

    std::uint8_t producedRow[WIDTH] = {};

    for (int row = 0; row < HEIGHT; ++row) {
        double_threshold(
            input.data() + row * WIDTH,
            producedRow
        );

        std::copy(
            producedRow,
            producedRow + WIDTH,
            actual.data() + row * WIDTH
        );
    }

    int mismatchCount = 0;

    for (int index = 0; index < pixelCount; ++index) {
        if (actual[index] != expected[index]) {
            if (mismatchCount < 10) {
                std::cerr
                    << "Mismatch at row "
                    << index / WIDTH
                    << ", column "
                    << index % WIDTH
                    << ": expected "
                    << static_cast<int>(expected[index])
                    << ", received "
                    << static_cast<int>(actual[index])
                    << '\n';
            }

            ++mismatchCount;
        }
    }

    int boundaryFailures = 0;

    if (actual[0] != NON_EDGE) {
        std::cerr << "Zero-value check failed.\n";
        ++boundaryFailures;
    }

    if (actual[1] != NON_EDGE) {
        std::cerr << "Below-low-threshold check failed.\n";
        ++boundaryFailures;
    }

    if (actual[2] != WEAK_EDGE) {
        std::cerr << "Low-threshold equality check failed.\n";
        ++boundaryFailures;
    }

    if (actual[3] != WEAK_EDGE) {
        std::cerr << "Below-high-threshold check failed.\n";
        ++boundaryFailures;
    }

    if (actual[4] != STRONG_EDGE) {
        std::cerr << "High-threshold equality check failed.\n";
        ++boundaryFailures;
    }

    if (actual[5] != STRONG_EDGE) {
        std::cerr << "Maximum-value check failed.\n";
        ++boundaryFailures;
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
        << "Boundary-check failures: "
        << boundaryFailures
        << '\n';

    if (mismatchCount != 0 || boundaryFailures != 0) {
        std::cerr << "Double threshold test FAILED.\n";
        return 1;
    }

    std::cout << "Double threshold test PASSED.\n";
    return 0;
}
