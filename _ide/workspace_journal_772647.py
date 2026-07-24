# 2026-07-19T16:41:47.643531352
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h", "../testbench/config.h", "../testbench/canny_types.h", "../testbench/canny_stages.h"])

comp = client.get_component(name="canny_hls")
comp.run(operation="C_SIMULATION")

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h", "../testbench/config.h", "../testbench/canny_types.h", "../testbench/canny_stages.h", "../reference/sobel_reference.h", "../reference/sobel_reference.cpp", "../reference/nms_reference.h", "../reference/nms_reference.cpp", "../reference/gaussian_reference.h", "../reference/gaussian_reference.cpp"])

comp.run(operation="C_SIMULATION")

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h", "../testbench/config.h", "../testbench/canny_types.h", "../testbench/canny_stages.h", "../reference/sobel_reference.h", "../reference/sobel_reference.cpp", "../reference/nms_reference.h", "../reference/nms_reference.cpp", "../reference/gaussian_reference.h", "../reference/gaussian_reference.cpp", "../testbench/sobel_reference.h", "../testbench/sobel_reference.cpp", "../testbench/nms_reference.h", "../testbench/nms_reference.cpp", "../testbench/gaussian_reference.h", "../testbench/gaussian_reference.cpp"])

comp.run(operation="C_SIMULATION")

cfg.set_values(key="tb.file", values=["../testbench/test_threshold.cpp", "../testbench/test_sobel.cpp", "../testbench/test_pipeline.cpp", "../testbench/test_nms.cpp", "../testbench/test_hysteresis.cpp", "../testbench/test_grayscale.cpp", "../testbench/test_gaussian.cpp", "../include/config.h", "../include/canny_types.h", "../include/canny_stages.h", "../testbench/config.h", "../testbench/canny_types.h", "../testbench/canny_stages.h", "../reference/sobel_reference.h", "../reference/sobel_reference.cpp", "../reference/nms_reference.h", "../reference/nms_reference.cpp", "../reference/gaussian_reference.h", "../reference/gaussian_reference.cpp", "../testbench/sobel_reference.h", "../testbench/sobel_reference.cpp", "../testbench/nms_reference.h", "../testbench/nms_reference.cpp", "../testbench/gaussian_reference.h", "../testbench/gaussian_reference.cpp", "../testbench/test_top.cpp"])

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

advanced_options = client.create_advanced_options_dict(dt_overlay="1",dt_zocl="1")

platform = client.create_platform_component(name = "kv260_ubuntu",hw_design = "$COMPONENT_LOCATION/../../kv260_custom/hw/kv260_hardware_platform.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

platform = client.get_component(name="kv260_ubuntu")
domain = platform.get_domain(name="linux_psu_cortexa53")

status = domain.generate_bif()

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot")

status = platform.build()

