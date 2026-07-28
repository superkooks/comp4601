#include <algorithm>
#include <cstdint>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "threshold_reference.h"

int test_threshold() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint16_t> input(pixelCount, 0);
    std::vector<std::uint8_t> expected(pixelCount, 0);
    std::vector<std::uint8_t> actual(pixelCount, 0);

    for (int index = 0; index < pixelCount; ++index) {
        input[index] =
            static_cast<std::uint16_t>(index % 2041);
    }

    input[0] = 0;
    input[1] = LOW_THRESHOLD - 1;
    input[2] = LOW_THRESHOLD;
    input[3] = HIGH_THRESHOLD - 1;
    input[4] = HIGH_THRESHOLD;
    input[5] = 2040;

    double_threshold_reference(input.data(), expected.data());

    std::uint16_t invalidInput[WIDTH] = {};
    std::uint8_t producedRow[WIDTH] = {};
    bool invalidResult = true;
    double_threshold(
        invalidInput,
        producedRow,
        false,
        &invalidResult
    );

    int validFailures = invalidResult ? 1 : 0;

    for (int row = 0; row < HEIGHT; ++row) {
        bool valid = false;
        double_threshold(
            input.data() + row * WIDTH,
            producedRow,
            true,
            &valid
        );

        if (!valid) {
            ++validFailures;
            continue;
        }

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
                    << "Mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << static_cast<int>(expected[index])
                    << ", received " << static_cast<int>(actual[index])
                    << '\n';
            }
            ++mismatchCount;
        }
    }

    int boundaryFailures = 0;
    boundaryFailures += actual[0] == NON_EDGE ? 0 : 1;
    boundaryFailures += actual[1] == NON_EDGE ? 0 : 1;
    boundaryFailures += actual[2] == WEAK_EDGE ? 0 : 1;
    boundaryFailures += actual[3] == WEAK_EDGE ? 0 : 1;
    boundaryFailures += actual[4] == STRONG_EDGE ? 0 : 1;
    boundaryFailures += actual[5] == STRONG_EDGE ? 0 : 1;

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Mismatches: " << mismatchCount << '\n';
    std::cout << "Boundary-check failures: " << boundaryFailures << '\n';
    std::cout << "Valid-signal failures: " << validFailures << '\n';

    if (
        mismatchCount != 0 ||
        boundaryFailures != 0 ||
        validFailures != 0
    ) {
        std::cerr << "Double threshold test FAILED.\n";
        return 1;
    }

    std::cout << "Double threshold test PASSED.\n";
    return 0;
}
