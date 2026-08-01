# 2026-07-31T10:57:53.867333942
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",comp_name = ["canny_hls", "canny_host"],build_comps = False)

proj.build(target = "hw",build_comps = False)

proj.build(target = "hw",comp_name = ["canny_hls", "canny_host"],build_comps = False)

proj.build(target = "hw",comp_name = ["canny_host"],build_comps = False)

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

proj.build(target = "hw",build_comps = False)

vitis.dispose()

