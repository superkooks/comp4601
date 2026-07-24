# 2026-07-19T21:12:22.130000369
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

proj = client.create_sys_project(name="canny", platform="$COMPONENT_LOCATION/../kv260_ubuntu/export/kv260_ubuntu/kv260_ubuntu.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

comp = client.create_app_component(name="canny_host",platform = "$COMPONENT_LOCATION/../kv260_ubuntu/export/kv260_ubuntu/kv260_ubuntu.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("canny_host")

status = comp.set_sysroot(sysroot="/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux")

comp = client.get_component(name="canny_host")
comp.set_app_config(key = "USER_CMAKE_CXX_STANDARD", values = ["17"])

platform = client.get_component(name="kv260_ubuntu")
status = platform.build()

comp.build(target="hw")

proj = client.get_sys_project(name="canny")

status = proj.add_container(name="binary_container_1")

proj = proj.add_component(name="canny_hls", container_name="binary_container_1")

proj = proj.add_component(name="canny_host")

comp.set_app_config(key = "USER_CMAKE_CXX_STANDARD", values = [""])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/**"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = [""])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/**"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = [""])

vitis.dispose()

