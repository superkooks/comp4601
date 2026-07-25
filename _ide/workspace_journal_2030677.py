# 2026-07-24T22:53:41.061478395
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

proj = client.get_sys_project(name="canny")

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

proj.build(target = "hw",comp_name = ["canny_hls"],build_comps = False)

vitis.dispose()

vitis.dispose()

