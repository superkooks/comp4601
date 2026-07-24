# 2026-07-19T21:38:02.801560943
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

platform = client.get_component(name="kv260_ubuntu")
status = platform.build()

comp = client.get_component(name="canny_host")
comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/11", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/11", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/11"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/11", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/11", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/11", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/opt/Xilinx/2025.2/Vitis/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/include", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/opt/Xilinx/2025.2/Vitis/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/include/c++/13.4.0", "../../iot-limerick-kria-classic-desktop-2204-classic-22.04-kr10-20240304-165-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

client.delete_component(name="kv260_ubuntu")

client.delete_component(name="canny_host")

advanced_options = client.create_advanced_options_dict(dt_overlay="1",dt_zocl="1")

platform = client.create_platform_component(name = "kv260_ubuntu",hw_design = "$COMPONENT_LOCATION/../../kv260_custom/hw/kv260_hardware_platform.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

domain = platform.get_domain(name="linux_psu_cortexa53")

status = domain.generate_bif()

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot")

status = platform.build()

comp = client.create_app_component(name="canny_host",platform = "$COMPONENT_LOCATION/../kv260_ubuntu/export/kv260_ubuntu/kv260_ubuntu.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("canny_host")

status = comp.set_sysroot(sysroot="/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux")

status = comp.import_files(from_loc="", files=["/home/superkooks/Downloads/fir128/fir_host/host.cpp"], is_skip_copy_sources = False)

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/13"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/13", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/13"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/13", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B "])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B"../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu""])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu -B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu -B../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = [""])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = [""])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = [""])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0 -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0  -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu -B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0  -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu" "-B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0" " -L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu" "-B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid"])

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/c++/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu/c++/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/include/opencv4"])

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

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv4"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/opencv4"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv_core"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv_core", "opencv_videoio"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv_core", "opencv_videoio", "opencv_highgui"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/opencv4"])

comp.set_app_config(key = "USER_LINK_DIRECTORIES", values = ["../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu", "../../iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/gcc/aarch64-linux-gnu/13"])

status = platform.build()

comp.build(target="hw")

comp.set_app_config(key = "USER_LINK_OTHER_FLAGS", values = ["-B/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu" "-B/opt/Xilinx/2025.2/gnu/aarch64/lin/aarch64-linux/cortexa72-cortexa53-amd-linux/usr/lib/aarch64-amd-linux/13.4.0" "-L/home/superkooks/Uni/COMP4601/iot-limerick-kria-classic-server-2404-classic-24.04-x07-20250423-sysroot/sysroots/aarch64-xilinx-linux/usr/lib/aarch64-linux-gnu" "-lopencv_stitching" "-lopencv_alphamat" "-lopencv_aruco" "-lopencv_barcode" "-lopencv_bgsegm" "-lopencv_bioinspired" "-lopencv_ccalib" "-lopencv_cvv" "-lopencv_dnn_objdetect" "-lopencv_dnn_superres" "-lopencv_dpm" "-lopencv_face" "-lopencv_freetype" "-lopencv_fuzzy" "-lopencv_hdf" "-lopencv_hfs" "-lopencv_img_hash" "-lopencv_intensity_transform" "-lopencv_line_descriptor" "-lopencv_mcc" "-lopencv_quality" "-lopencv_rapid" "-lopencv_reg" "-lopencv_rgbd" "-lopencv_saliency" "-lopencv_shape" "-lopencv_stereo" "-lopencv_structured_light" "-lopencv_phase_unwrapping" "-lopencv_superres" "-lopencv_optflow" "-lopencv_surface_matching" "-lopencv_tracking" "-lopencv_highgui" "-lopencv_datasets" "-lopencv_text" "-lopencv_plot" "-lopencv_ml" "-lopencv_videostab" "-lopencv_videoio" "-lopencv_viz" "-lopencv_wechat_qrcode" "-lopencv_ximgproc" "-lopencv_video" "-lopencv_xobjdetect" "-lopencv_objdetect" "-lopencv_calib3d" "-lopencv_imgcodecs" "-lopencv_features2d" "-lopencv_dnn" "-lopencv_flann" "-lopencv_xphoto" "-lopencv_photo" "-lopencv_imgproc" "-lopencv_core"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv_videoio", "opencv_highgui"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid", "opencv_videoio"])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["uuid"])

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

vitis.dispose()

