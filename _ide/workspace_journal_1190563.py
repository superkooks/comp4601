# 2026-07-20T17:17:18.765477746
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

status = client.delete_sys_project(name="canny")

status = client.delete_sys_project(name="canny")

advanced_options = client.create_advanced_options_dict(dt_overlay="1",dt_zocl="1")

platform = client.create_platform_component(name = "kv260_desktop",hw_design = "$COMPONENT_LOCATION/../../kv260_hardware_platform/kv260_hardware_platform.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

platform = client.get_component(name="kv260_desktop")
domain = platform.get_domain(name="linux_psu_cortexa53")

status = domain.generate_bif()

status = domain.set_boot_dir(path="$COMPONENT_LOCATION/../../sdksh-built/sysroots/cortexa72-cortexa53-amd-linux")

status = domain.set_boot_dir(path="../../sdksh-built/")

status = platform.build()

comp = client.create_app_component(name="canny_host",platform = "$COMPONENT_LOCATION/../kv260_desktop/export/kv260_desktop/kv260_desktop.xpfm",domain = "linux_psu_cortexa53")

comp = client.get_component("canny_host")

status = comp.set_sysroot(sysroot="/home/superkooks/Uni/COMP4601/sdksh-built/sysroots/cortexa72-cortexa53-amd-linux")

comp = client.get_component(name="canny_host")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../src-host", files=["main.cpp"], is_skip_copy_sources = False)

status = platform.build()

comp.build(target="hw")

client.delete_component(name="kv260_desktop")

client.delete_component(name="canny_host")

vitis.dispose()

