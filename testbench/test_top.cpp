int test_gaussian();
int test_grayscale();
int test_sobel();
int test_nms();

int main() {
    int result = 0;
    result |= test_grayscale();
    result |= test_gaussian();
    result |= test_sobel();
    result |= test_nms();

    return result;
}
