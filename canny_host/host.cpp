#include <iostream>
#include <cstring>

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

class CannyFPGA {
    private:
    xrt::kernel krnl;
    xrt::bo in_buf;
    xrt::bo out_buf;

    public:
    cv::Mat in_mat;
    cv::Mat out_mat;

    CannyFPGA();
    void process_frame();
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

    in_mat = cv::Mat(HEIGHT, WIDTH, CV_8UC3, in_buf.map<uint8_t*>());
    out_mat = cv::Mat(HEIGHT, WIDTH, CV_8U, out_buf.map<uint8_t*>());
}

void CannyFPGA::process_frame() {
    in_buf.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto run = krnl(in_buf, out_buf);
    run.wait();

    out_buf.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
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
    processor.process_frame();
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
