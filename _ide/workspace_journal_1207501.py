# 2026-07-21T19:32:34.565943070
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

advanced_options = client.create_advanced_options_dict(dt_overlay="1",dt_zocl="1")

platform = client.create_platform_component(name = "kv260_desktop",hw_design = "$COMPONENT_LOCATION/../../kv260_hardware_platform/kv260_hardware_platform.xsa",os = "linux",cpu = "psu_cortexa53",domain_name = "linux_psu_cortexa53",advanced_options = advanced_options)

platform = client.get_component(name="kv260_desktop")
status = platform.build()

