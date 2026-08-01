#include <iostream>
#include <cstring>
#include <chrono>
#include <limits>
#include <algorithm>

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>

#include "config.h"

const int device_index = 0;
const char *binaryFile = "binary_container_1.xclbin";

struct FrameTiming {
    double sync_in_us;
    double launch_us;
    double wait_us;
    double sync_out_us;
    double total_us;
};

class CannyFPGA {
    private:
    xrt::kernel krnl;
    xrt::bo in_buf;
    xrt::bo out_buf;
    xrt::run run;

    public:
    cv::Mat in_mat;
    cv::Mat out_mat;

    CannyFPGA();
    FrameTiming process_frame();
};

CannyFPGA::CannyFPGA() {
    std::cout << "Open the device" << device_index << std::endl;
    auto device = xrt::device(device_index);
    std::cout << "Load the xclbin " << binaryFile << std::endl;
    auto uuid = device.load_xclbin(binaryFile);

    krnl = xrt::kernel(device, uuid, "canny_top");

    std::cout << "Allocate buffers in Global Memory\n";
    in_buf = xrt::bo(device, WIDTH*HEIGHT*3, krnl.group_id(0));
    out_buf = xrt::bo(device, WIDTH*HEIGHT, krnl.group_id(1));

    // Create the run object once and reuse it every frame, instead of paying
    // XRT's argument-registration/command-submission setup cost on every call.
    run = xrt::run(krnl);
    run.set_arg(0, in_buf);
    run.set_arg(1, out_buf);

    in_mat = cv::Mat(HEIGHT, WIDTH, CV_8UC3, in_buf.map<uint8_t*>());
    out_mat = cv::Mat(HEIGHT, WIDTH, CV_8U, out_buf.map<uint8_t*>());
}

FrameTiming CannyFPGA::process_frame() {
    auto t0 = std::chrono::high_resolution_clock::now();
    in_buf.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto t1 = std::chrono::high_resolution_clock::now();
    run.start();

    auto t2 = std::chrono::high_resolution_clock::now();
    run.wait();

    auto t3 = std::chrono::high_resolution_clock::now();
    out_buf.sync(XCL_BO_SYNC_BO_FROM_DEVICE);

    auto t4 = std::chrono::high_resolution_clock::now();

    return FrameTiming{
        std::chrono::duration<double, std::micro>(t1 - t0).count(),
        std::chrono::duration<double, std::micro>(t2 - t1).count(),
        std::chrono::duration<double, std::micro>(t3 - t2).count(),
        std::chrono::duration<double, std::micro>(t4 - t3).count(),
        std::chrono::duration<double, std::micro>(t4 - t0).count(),
    };
}

class CannyCV {
    private:
    cv::Mat gray_mat;
    cv::Mat blur_mat;

    public:
    cv::Mat in_mat;
    cv::Mat out_mat;

    CannyCV();
    void process_frame();
};

CannyCV::CannyCV() {
    in_mat = cv::Mat(HEIGHT, WIDTH, CV_8UC3);
    gray_mat = cv::Mat(HEIGHT, WIDTH, CV_8U);
    blur_mat = cv::Mat(HEIGHT, WIDTH, CV_8U);
    out_mat = cv::Mat(HEIGHT, WIDTH, CV_8U);
}

void CannyCV::process_frame() {
    cv::cvtColor(in_mat, gray_mat, cv::COLOR_BGR2GRAY);
    cv::GaussianBlur(gray_mat, blur_mat, cv::Size(5,5), 0);
    cv::Canny(blur_mat, out_mat, LOW_THRESHOLD, HIGH_THRESHOLD);
}

int main(int argc, char** argv) {
    auto processor = CannyFPGA();

    // BENCHMARK SINGLE IMAGE
    auto img_mat = cv::imread("test.jpg");
    cv::imshow("Input", img_mat);
    img_mat.copyTo(processor.in_mat);

    // Warm up (first call can pay one-off driver/cache costs).
    processor.process_frame();

    constexpr int NUM_ITERS = 100;
    double total_sum = 0, sync_in_sum = 0, launch_sum = 0, wait_sum = 0, sync_out_sum = 0;
    double total_min = std::numeric_limits<double>::max();

    for (int i = 0; i < NUM_ITERS; i++) {
        auto t = processor.process_frame();
        total_sum += t.total_us;
        sync_in_sum += t.sync_in_us;
        launch_sum += t.launch_us;
        wait_sum += t.wait_us;
        sync_out_sum += t.sync_out_us;
        total_min = std::min(total_min, t.total_us);
    }

    std::cout << "Over " << NUM_ITERS << " iterations:\n"
              << "  total    mean=" << total_sum / NUM_ITERS << "us  min=" << total_min << "us\n"
              << "  sync-in  mean=" << sync_in_sum / NUM_ITERS << "us\n"
              << "  launch   mean=" << launch_sum / NUM_ITERS << "us\n"
              << "  wait     mean=" << wait_sum / NUM_ITERS << "us\n"
              << "  sync-out mean=" << sync_out_sum / NUM_ITERS << "us\n";

    cv::imshow("Output", processor.out_mat);
    cv::imwrite("out.jpg", processor.out_mat);

    for (;;)
        if (cv::waitKey(0) == 'q')
            break;
    

    // LIVE WEBCAM CAPTURE
    // cv::Mat frame;
    // cv::VideoCapture cap;
    
    // // open selected camera using selected API
    // cap.open(0);
    // if (!cap.isOpened()) {
    //     std::cerr << "ERROR! Unable to open camera\n";
    //     return -1;
    // }
    
    // std::cout << "Start grabbing" << std::endl
    //     << "Press any q to terminate" << std::endl;
    // for (;;) {
    //     // wait for a new frame from camera and store it into 'frame'
    //     cap.read(frame);
    //     // check if we succeeded
    //     if (frame.empty()) {
    //         std::cerr << "ERROR! blank frame grabbed\n";
    //         break;
    //     }
    //     // show live and wait for a key with timeout long enough to show images
    //     cv::imshow("Live", frame);
    //     if (cv::waitKey(5) >= 0)
    //         break;
    // }

    return 0;
}
