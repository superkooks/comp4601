# 2026-08-03T00:04:36.274829761
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

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

status = platform.build()

comp.build(target="hw")

