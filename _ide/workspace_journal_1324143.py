# 2026-07-21T19:46:00.293912064
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.create_app_component(name="canny_host",platform = "$COMPONENT_LOCATION/../kv260_desktop/export/kv260_desktop/kv260_desktop.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("canny_host")

status = comp.set_sysroot(sysroot="/home/superkooks/Uni/COMP4601/sdkedf/sysroots/cortexa72-cortexa53-amd-linux")

comp = client.get_component(name="canny_host")
status = comp.import_files(from_loc="", files=["/home/superkooks/Downloads/fir128/fir_host/host.cpp"], is_skip_copy_sources = False)

comp.set_app_config(key = "USER_CMAKE_CXX_STANDARD", values = ["17"])

platform = client.get_component(name="kv260_desktop")
domain = platform.get_domain(name="linux_psu_cortexa53")

status = domain.generate_bif()

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../sdkedf/sysroots/cortexa72-cortexa53-amd-linux")

status = platform.build()

comp.build(target="hw")

client.delete_component(name="kv260_desktop")

client.delete_component(name="canny_host")

advanced_options = client.create_advanced_options_dict(dt_overlay="1",dt_zocl="1")

platform = client.create_platform_component(name = "kv260_desktop",hw_design = "$COMPONENT_LOCATION/../../kv260_hardware_platform/kv260_hardware_platform.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

status = domain.generate_bif()

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../sdkedf/sysroots/cortexa72-cortexa53-amd-linux")

status = platform.build()

proj = client.create_sys_project(name="canny", platform="$COMPONENT_LOCATION/../kv260_desktop/export/kv260_desktop/kv260_desktop.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../sdkedf/sysroots")

status = platform.build()

comp = client.create_app_component(name="canny_host",platform = "$COMPONENT_LOCATION/../kv260_desktop/export/kv260_desktop/kv260_desktop.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("canny_host")

status = comp.set_sysroot(sysroot="/home/superkooks/Uni/COMP4601/sdkedf/sysroots/cortexa72-cortexa53-amd-linux")

status = comp.import_files(from_loc="", files=["/home/superkooks/Downloads/fir128/fir_host/host.cpp"], is_skip_copy_sources = False)

comp.set_app_config(key = "USER_CMAKE_CXX_STANDARD", values = ["17"])

proj = client.get_sys_project(name="canny")

status = proj.add_container(name="binary_container_1")

proj = proj.add_component(name="canny_hls", container_name="binary_container_1")

proj = proj.add_component(name="canny_host")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

proj.build(target = "hw",build_comps = False)

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

proj.build(target = "hw",build_comps = False)

proj.build(target = "hw",build_comps = False)

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg = client.get_config_file(path="/home/superkooks/Uni/COMP4601/assign/canny_hls/hls_config.cfg")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/config.h", "../include/canny_stages.h", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../include/config.h", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

cfg.set_value(section="hls", key="syn.cflags", value="")

cfg.set_value(section="hls", key="syn.csimflags", value="")

cfg.set_values(key="syn.file", values=["../src/sobel.cpp", "../src/non_maximum_suppression.cpp", "../src/hysteresis.cpp", "../src/grayscale.cpp", "../src/double_threshold.cpp", "../src/canny_top.cpp", "../src/gaussian_blur.cpp", "../src/config.h", "../src/canny_types.h", "../src/canny_stages.h"])

cfg.set_values(key="syn.file_cflags", values=[])

cfg.set_values(key="syn.file_csimflags", values=[])

proj.build(target = "hw",build_comps = False)

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

vitis.dispose()

