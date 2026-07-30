# 2026-07-29T23:31:58.370627800
import vitis

client = vitis.create_client()
client.set_workspace(path="comp4601")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

