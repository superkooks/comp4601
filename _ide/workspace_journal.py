# 2026-08-01T15:44:01.332331682
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.get_component(name="canny_hls")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

vitis.dispose()

