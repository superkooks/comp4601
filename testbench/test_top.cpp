int test_grayscale();
int test_gaussian();
int test_sobel();
int test_nms();
int test_threshold();
int test_hysteresis();

int main() {
    int result = 0;

    result |= test_grayscale();
    result |= test_gaussian();
    result |= test_sobel();
    result |= test_nms();
    result |= test_threshold();
    result |= test_hysteresis();

    return result;
}
