# 2026-07-23T22:22:33.503525100
import vitis

client = vitis.create_client()
client.set_workspace(path="comp4601")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/twhsaw/Projects/comp4601/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/c:/Users/twhsaw/Projects/comp4601/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/c:/Users/twhsaw/Projects/comp4601/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/c:/Users/twhsaw/Projects/comp4601/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/c:/Users/twhsaw/Projects/comp4601/canny_hls/hls_config.cfg")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/canny_types.h", "../include/canny_stages.h", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/canny_stages.h", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h", "../src/output_row.cpp"])

cfg.set_values(key="syn.file_csimflags", values=[])

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

