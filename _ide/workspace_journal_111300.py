# 2026-07-25T11:36:57.272976077
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

platform = client.get_component(name="kv260_desktop")
status = platform.build()

comp = client.get_component(name="canny_host")
comp.build(target="hw")

vitis.dispose()

