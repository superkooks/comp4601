# COMP4601 Project: Canny Edge Detection

## Project Overview
Our project is to accelerate the [Canny edge detection](https://en.wikipedia.org/wiki/Canny_edge_detector) algorithm in hardware.
This algorithm is one of the most useful tools in the computer vision toolkit, and sees widespread use.
We aim to accelerate the algorithm to run in better than realtime on the PL hardware of the Kria KV260, using high-level synthesis.

| Sample Input | Sample Output |
|-------|--------|
| ![sample input](https://upload.wikimedia.org/wikipedia/commons/f/f0/Valve_original_%281%29.PNG) | ![sample output](https://upload.wikimedia.org/wikipedia/commons/9/93/Valve_monochrome_canny_%286%29.PNG) |

### Algorithm Summary
1. Apply a Gaussian blur to smooth the image and remove noise
2. Find the intensity gradients of the image
3. Apply gradient magnitude thresholding to remove spurious response
4. Apply double threshold to determine potential edges
5. Track edges by hysteresis: Finalize detection of edges by supressing weak edges not connected to strong edges

### Project Plan
1. Measure baseline performance (fps, latency) using OpenCV on the PS
2. Develop each step of the algorithm and verify correctness through simulation
3. Synthesize the kernel for the PL and develop host software to capture images from webcam, run the kernel, and display the processed images
4. Benchmark and optimize the algorithm

## Team Info
Team Name: Edge Detectives

### Team Members
- Luke McCallum (z5591695)
- Thomas Saw (z5587733)
- Rahul Vignesh Kommineni (z5611329)
- Kaashvi Goel (z5623123)

### Team point of contact:
Luke McCallum ([z5591695@ad.unsw.edu.au](mailto:z5591695@ad.unsw.edu.au))
