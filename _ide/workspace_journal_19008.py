# 2026-08-01T12:06:09.788819715
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.get_component(name="canny_hls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

