#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${PROJECT_ROOT}/build/linux"
CXX="${CXX:-g++}"

mkdir -p "${BUILD_DIR}"
cd "${PROJECT_ROOT}"

"${CXX}" \
    -std=c++17 \
    -O2 \
    -Wall \
    -Wextra \
    -Wno-unknown-pragmas \
    -Isrc \
    -Itestbench \
    src/grayscale.cpp \
    src/gaussian_blur.cpp \
    src/sobel.cpp \
    src/non_maximum_suppression.cpp \
    src/double_threshold.cpp \
    src/hysteresis.cpp \
    src/output_row.cpp \
    src/canny_top.cpp \
    testbench/gaussian_reference.cpp \
    testbench/sobel_reference.cpp \
    testbench/nms_reference.cpp \
    testbench/threshold_reference.cpp \
    testbench/hysteresis_reference.cpp \
    testbench/pipeline_reference.cpp \
    testbench/test_grayscale.cpp \
    testbench/test_gaussian.cpp \
    testbench/test_sobel.cpp \
    testbench/test_nms.cpp \
    testbench/test_threshold.cpp \
    testbench/test_hysteresis.cpp \
    testbench/test_pipeline.cpp \
    testbench/test_optimized_pipeline.cpp \
    testbench/test_top.cpp \
    -o "${BUILD_DIR}/canny_tests"

"${BUILD_DIR}/canny_tests"
