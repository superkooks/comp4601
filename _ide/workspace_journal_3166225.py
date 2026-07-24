# 2026-07-20T12:09:27.960831382
import vitis

client = vitis.create_client()
client.set_workspace(path="assign")

client.delete_component(name="canny_host")

client.delete_component(name="kv260_ubuntu")

vitis.dispose()

