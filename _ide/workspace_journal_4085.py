# 2026-07-31T17:14:17.905657924
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.get_component(name="canny_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

