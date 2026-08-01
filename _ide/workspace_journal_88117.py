# 2026-07-31T10:15:43.250041006
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",comp_name = ["canny_hls", "canny_host"],build_comps = False)

vitis.dispose()

