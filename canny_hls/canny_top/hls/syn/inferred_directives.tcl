# Inferred from performance & pipeline pragmas/directives
set_directive_array_partition grayscale/row_bytes -dim=1 -type=cyclic -factor=32 row_bytes
set_directive_loop_flatten write_frame/VITIS_LOOP_7_1
