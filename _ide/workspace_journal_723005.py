# 2026-07-19T15:53:13.829827436
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

status = client.add_platform_repos(platform=["/home/superkooks/Uni/COMP4601/kv260_custom"])

comp = client.create_hls_component(name = "canny_hls",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/gaussian_blur.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../include/canny_stages.h", "../include/config.h", "../include/canny_types.h"])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h"])

comp = client.get_component(name="canny_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/gaussian_blur.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../include/config.h", "../include/canny_types.h"])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h"])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/canny_types.h"])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/gaussian_blur.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../include/config.h"])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../include/config.h"])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../include/config.h", "../src/gaussian_blur.cpp"])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp"])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp"])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h"])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h"])

vitis.dispose()

