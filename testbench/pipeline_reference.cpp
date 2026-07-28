#include <cstdint>
#include <vector>

#include "pipeline_reference.h"
#include "gaussian_reference.h"
#include "sobel_reference.h"
#include "nms_reference.h"
#include "threshold_reference.h"
#include "hysteresis_reference.h"

void canny_reference(
    const RGBPixel input[HEIGHT * WIDTH],
    std::uint8_t output[HEIGHT * WIDTH]
) {
    const int pixelCount = HEIGHT * WIDTH;

    std::vector<std::uint8_t> grayscaleImage(pixelCount, 0);
    std::vector<std::uint8_t> gaussianImage(pixelCount, 0);
    std::vector<GradientPixel> sobelImage(
        pixelCount,
        {0, GradientDirection::DEG_0}
    );
    std::vector<std::uint16_t> nmsImage(pixelCount, 0);
    std::vector<std::uint8_t> thresholdImage(pixelCount, 0);
    std::vector<std::uint8_t> hysteresisOne(pixelCount, 0);
    std::vector<std::uint8_t> hysteresisTwo(pixelCount, 0);
    std::vector<std::uint8_t> hysteresisThree(pixelCount, 0);

    for (int index = 0; index < pixelCount; ++index) {
        const unsigned int gray =
            77U * input[index].red +
            150U * input[index].green +
            29U * input[index].blue;

        grayscaleImage[index] =
            static_cast<std::uint8_t>(gray >> 8);
    }

    gaussian_reference(grayscaleImage.data(), gaussianImage.data());
    sobel_reference(gaussianImage.data(), sobelImage.data());
    non_maximum_suppression_reference(sobelImage.data(), nmsImage.data());
    double_threshold_reference(nmsImage.data(), thresholdImage.data());

    hysteresis_reference(
        thresholdImage.data(),
        hysteresisOne.data(),
        WEAK_EDGE
    );
    hysteresis_reference(
        hysteresisOne.data(),
        hysteresisTwo.data(),
        WEAK_EDGE
    );
    hysteresis_reference(
        hysteresisTwo.data(),
        hysteresisThree.data(),
        WEAK_EDGE
    );
    hysteresis_reference(
        hysteresisThree.data(),
        output,
        NON_EDGE
    );
}
