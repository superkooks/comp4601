#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <vector>

#include "canny_stages.h"
#include "hysteresis_reference.h"
#include "hls_stream.h"

namespace {

int image_index(int row, int column) {
    return row * WIDTH + column;
}

template <int Instance>
void run_hysteresis(
    const std::vector<std::uint8_t>& input,
    std::vector<std::uint8_t>& output,
    std::uint8_t resolveWeak
) {
    // hysteresis reads exactly HEIGHT rows and emits exactly HEIGHT rows,
    // regardless of Instance (see canny_stages.h): its own row-delay is
    // handled internally now, so the testbench doesn't need to feed or
    // discard any extra rows.
    hls::stream<std::uint8_t> inputStream;
    hls::stream<std::uint8_t> outputStream;

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            inputStream.write(input[row * WIDTH + column]);
        }
    }

    hysteresis<Instance>(inputStream, outputStream, resolveWeak);

    for (int row = 0; row < HEIGHT; ++row) {
        for (int column = 0; column < WIDTH; ++column) {
            output[row * WIDTH + column] = outputStream.read();
        }
    }
}

int compare_images(
    const std::vector<std::uint8_t>& expected,
    const std::vector<std::uint8_t>& actual,
    const char* label
) {
    int mismatches = 0;

    for (int index = 0; index < HEIGHT * WIDTH; ++index) {
        if (expected[index] != actual[index]) {
            if (mismatches < 10) {
                std::cerr
                    << label << " mismatch at row " << index / WIDTH
                    << ", column " << index % WIDTH
                    << ": expected " << static_cast<int>(expected[index])
                    << ", received " << static_cast<int>(actual[index])
                    << '\n';
            }
            ++mismatches;
        }
    }

    return mismatches;
}

}

int test_hysteresis() {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> input(pixelCount, NON_EDGE);
    std::vector<std::uint8_t> expectedResolve(pixelCount, NON_EDGE);
    std::vector<std::uint8_t> actualResolve(pixelCount, NON_EDGE);
    std::vector<std::uint8_t> expectedPreserve(pixelCount, NON_EDGE);
    std::vector<std::uint8_t> actualPreserve(pixelCount, NON_EDGE);

    input[image_index(50, 50)] = STRONG_EDGE;

    input[image_index(100, 100)] = STRONG_EDGE;
    input[image_index(100, 101)] = WEAK_EDGE;

    input[image_index(150, 150)] = STRONG_EDGE;
    input[image_index(151, 150)] = WEAK_EDGE;

    input[image_index(200, 200)] = STRONG_EDGE;
    input[image_index(201, 201)] = WEAK_EDGE;

    input[image_index(250, 250)] = WEAK_EDGE;

    input[image_index(300, 300)] = STRONG_EDGE;
    input[image_index(300, 301)] = WEAK_EDGE;
    input[image_index(300, 302)] = WEAK_EDGE;

    for (int row = 350; row < 400; ++row) {
        for (int column = 50; column < 150; ++column) {
            const int selector = (row * 7 + column * 11) % 12;
            if (selector == 0) {
                input[image_index(row, column)] = STRONG_EDGE;
            }
            else if (selector <= 3) {
                input[image_index(row, column)] = WEAK_EDGE;
            }
        }
    }

    hysteresis_reference(
        input.data(),
        expectedResolve.data(),
        NON_EDGE
    );
    hysteresis_reference(
        input.data(),
        expectedPreserve.data(),
        WEAK_EDGE
    );

    run_hysteresis<1>(input, actualResolve, NON_EDGE);
    run_hysteresis<2>(input, actualPreserve, WEAK_EDGE);

    const int resolveMismatches = compare_images(
        expectedResolve,
        actualResolve,
        "resolve"
    );
    const int preserveMismatches = compare_images(
        expectedPreserve,
        actualPreserve,
        "preserve"
    );

    int manualFailures = 0;
    manualFailures +=
        actualResolve[image_index(50, 50)] == STRONG_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(100, 101)] == STRONG_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(151, 150)] == STRONG_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(201, 201)] == STRONG_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(250, 250)] == NON_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(300, 301)] == STRONG_EDGE ? 0 : 1;
    manualFailures +=
        actualResolve[image_index(300, 302)] == NON_EDGE ? 0 : 1;
    manualFailures +=
        actualPreserve[image_index(300, 302)] == WEAK_EDGE ? 0 : 1;

    std::cout << "Pixels tested per mode: " << pixelCount << '\n';
    std::cout << "Resolve-mode mismatches: " << resolveMismatches << '\n';
    std::cout << "Preserve-mode mismatches: " << preserveMismatches << '\n';
    std::cout << "Manual-check failures: " << manualFailures << '\n';

    if (
        resolveMismatches != 0 ||
        preserveMismatches != 0 ||
        manualFailures != 0
    ) {
        std::cerr << "Hysteresis test FAILED.\n";
        return 1;
    }

    std::cout << "Hysteresis test PASSED.\n";
    return 0;
}
