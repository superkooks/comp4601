#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "gaussian_reference.h"
#include "hls_stream.h"

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

    hls::stream<std::uint8_t> inputStream;
    hls::stream<std::uint8_t> outputStream;

    // gaussian_blur reads exactly HEIGHT rows and emits exactly HEIGHT rows
    // (see canny_stages.h): its own row-delay is handled internally now, so
    // the testbench doesn't need to feed or discard any extra rows.
    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            inputStream.write(input[row * WIDTH + column]);
        }
    }

    gaussian_blur(inputStream, outputStream);

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            actual[row * WIDTH + column] = outputStream.read();
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

    std::cout << "Pixels tested: " << pixelCount << '\n';
    std::cout << "Mismatches: " << mismatchCount << '\n';
    std::cout << "Maximum absolute error: " << maximumError << '\n';

    if (mismatchCount != 0) {
        std::cerr << "Gaussian blur test FAILED.\n";
        return 1;
    }

    std::cout << "Gaussian blur test PASSED.\n";
    return 0;
}
