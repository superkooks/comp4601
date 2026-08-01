# 2026-07-31T09:39:17.035042619
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

comp = client.get_component(name="canny_hls")
comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

