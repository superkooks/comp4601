# 2026-07-24T12:15:47.745573277
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp = client.get_component(name="canny_host")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../src", files=["config.h"], is_skip_copy_sources = False)

platform = client.get_component(name="kv260_desktop")
status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["opencv_videoio", "opencv_highgui", "opencv_core", "opencv_imgproc"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["opencv_videoio", "opencv_highgui", "opencv_core", "opencv_imgproc", "opencv_imgcodec"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["opencv_videoio", "opencv_highgui", "opencv_core", "opencv_imgproc"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["opencv_videoio", "opencv_highgui", "opencv_core", "opencv_imgproc", "opencv_imgcodecs"])

status = platform.build()

comp.build(target="hw")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",build_comps = False)

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

status = platform.build()

comp = client.get_component(name="canny_host")
comp.build(target="hw")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.cflags", value="-std=c")

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h", "../src/output_row.cpp"])

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.cflags", value="-std=c++17")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h", "../src/output_row.cpp"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

comp.run(operation="SYNTHESIS")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h", "../src/output_row.cpp"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

status = platform.build()

comp = client.get_component(name="canny_host")
comp.build(target="hw")

proj.build_container(target = "hw",build_comps = False, container_name = "binary_container_1")

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

vitis.dispose()

