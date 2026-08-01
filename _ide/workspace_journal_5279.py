# 2026-07-30T23:01:41.598029596
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

platform = client.get_component(name="kv260_desktop")
status = platform.build()

comp = client.get_component(name="canny_host")
comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",comp_name = ["canny_hls", "canny_host"],build_comps = False)

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

proj.build(target = "hw",comp_name = ["canny_host"],build_comps = False)

