# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis4_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_hysteresis3_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_12_1_1_out_nonmax_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w18_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cond_loc_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {gaussian_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {sobel_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {nonmax_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {double_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {hysteresis1_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {hysteresis2_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {hysteresis3_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {hysteresis4_valid_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name lineBuffer_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lineBuffer_1 \
    op interface \
    ports { lineBuffer_1_address0 { O 12 vector } lineBuffer_1_ce0 { O 1 bit } lineBuffer_1_d0 { O 8 vector } lineBuffer_1_q0 { I 8 vector } lineBuffer_1_we0 { O 1 bit } lineBuffer_1_address1 { O 12 vector } lineBuffer_1_ce1 { O 1 bit } lineBuffer_1_d1 { O 8 vector } lineBuffer_1_q1 { I 8 vector } lineBuffer_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lineBuffer_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name lineBuffer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename lineBuffer \
    op interface \
    ports { lineBuffer_address0 { O 11 vector } lineBuffer_ce0 { O 1 bit } lineBuffer_d0 { O 8 vector } lineBuffer_q0 { I 8 vector } lineBuffer_we0 { O 1 bit } lineBuffer_address1 { O 11 vector } lineBuffer_ce1 { O 1 bit } lineBuffer_d1 { O 8 vector } lineBuffer_q1 { I 8 vector } lineBuffer_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lineBuffer'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name p_anonymous_namespace_lineBuffer_direction \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_direction \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_direction_address0 { O 11 vector } p_anonymous_namespace_lineBuffer_direction_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_d0 { O 2 vector } p_anonymous_namespace_lineBuffer_direction_q0 { I 2 vector } p_anonymous_namespace_lineBuffer_direction_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_address1 { O 11 vector } p_anonymous_namespace_lineBuffer_direction_ce1 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_d1 { O 2 vector } p_anonymous_namespace_lineBuffer_direction_q1 { I 2 vector } p_anonymous_namespace_lineBuffer_direction_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_direction'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name p_anonymous_namespace_lineBuffer_25_magnitude_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_25_magnitude_0 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_25_magnitude_0_address0 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_d0 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_q0 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_address1 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_ce1 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_d1 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_q1 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_25_magnitude_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name p_anonymous_namespace_lineBuffer_25_magnitude_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_25_magnitude_1 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_25_magnitude_1_address0 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_d0 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_q0 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_address1 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_ce1 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_d1 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_q1 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_25_magnitude_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi3EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi3EEE_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address1 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce1 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d1 { O 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q1 { I 8 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name i_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_0 \
    op interface \
    ports { i_0 { I 10 vector } i_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name gmem \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_0_AWVALID { O 1 bit } m_axi_gmem_0_AWREADY { I 1 bit } m_axi_gmem_0_AWADDR { O 64 vector } m_axi_gmem_0_AWID { O 1 vector } m_axi_gmem_0_AWLEN { O 32 vector } m_axi_gmem_0_AWSIZE { O 3 vector } m_axi_gmem_0_AWBURST { O 2 vector } m_axi_gmem_0_AWLOCK { O 2 vector } m_axi_gmem_0_AWCACHE { O 4 vector } m_axi_gmem_0_AWPROT { O 3 vector } m_axi_gmem_0_AWQOS { O 4 vector } m_axi_gmem_0_AWREGION { O 4 vector } m_axi_gmem_0_AWUSER { O 1 vector } m_axi_gmem_0_WVALID { O 1 bit } m_axi_gmem_0_WREADY { I 1 bit } m_axi_gmem_0_WDATA { O 512 vector } m_axi_gmem_0_WSTRB { O 64 vector } m_axi_gmem_0_WLAST { O 1 bit } m_axi_gmem_0_WID { O 1 vector } m_axi_gmem_0_WUSER { O 1 vector } m_axi_gmem_0_ARVALID { O 1 bit } m_axi_gmem_0_ARREADY { I 1 bit } m_axi_gmem_0_ARADDR { O 64 vector } m_axi_gmem_0_ARID { O 1 vector } m_axi_gmem_0_ARLEN { O 32 vector } m_axi_gmem_0_ARSIZE { O 3 vector } m_axi_gmem_0_ARBURST { O 2 vector } m_axi_gmem_0_ARLOCK { O 2 vector } m_axi_gmem_0_ARCACHE { O 4 vector } m_axi_gmem_0_ARPROT { O 3 vector } m_axi_gmem_0_ARQOS { O 4 vector } m_axi_gmem_0_ARREGION { O 4 vector } m_axi_gmem_0_ARUSER { O 1 vector } m_axi_gmem_0_RVALID { I 1 bit } m_axi_gmem_0_RREADY { O 1 bit } m_axi_gmem_0_RDATA { I 512 vector } m_axi_gmem_0_RLAST { I 1 bit } m_axi_gmem_0_RID { I 1 vector } m_axi_gmem_0_RFIFONUM { I 9 vector } m_axi_gmem_0_RUSER { I 1 vector } m_axi_gmem_0_RRESP { I 2 vector } m_axi_gmem_0_BVALID { I 1 bit } m_axi_gmem_0_BREADY { O 1 bit } m_axi_gmem_0_BRESP { I 2 vector } m_axi_gmem_0_BID { I 1 vector } m_axi_gmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name in_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_r \
    op interface \
    ports { in_r { I 64 vector } in_r_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } out_r_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_anonymous_namespace_rowsReceived \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_i { I 32 vector } p_anonymous_namespace_rowsReceived_o { O 32 vector } p_anonymous_namespace_rowsReceived_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_anonymous_namespace_rowsReceived_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_1 \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_1_i { I 32 vector } p_anonymous_namespace_rowsReceived_1_o { O 32 vector } p_anonymous_namespace_rowsReceived_1_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_anonymous_namespace_rowsReceived_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_2 \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_2_i { I 32 vector } p_anonymous_namespace_rowsReceived_2_o { O 32 vector } p_anonymous_namespace_rowsReceived_2_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_anonymous_namespace_rowsReceived_1_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_1_s \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_1_s_i { I 32 vector } p_anonymous_namespace_rowsReceived_1_s_o { O 32 vector } p_anonymous_namespace_rowsReceived_1_s_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_1_s_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_anonymous_namespace_rowsReceived_2_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_2_s \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_2_s_i { I 32 vector } p_anonymous_namespace_rowsReceived_2_s_o { O 32 vector } p_anonymous_namespace_rowsReceived_2_s_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_2_s_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_anonymous_namespace_rowsReceived_3_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_3_s \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_3_s_i { I 32 vector } p_anonymous_namespace_rowsReceived_3_s_o { O 32 vector } p_anonymous_namespace_rowsReceived_3_s_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_3_s_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_anonymous_namespace_rowsReceived_4_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_4_s \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_4_s_i { I 32 vector } p_anonymous_namespace_rowsReceived_4_s_o { O 32 vector } p_anonymous_namespace_rowsReceived_4_s_i_ap_vld { I 1 bit } p_anonymous_namespace_rowsReceived_4_s_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name rowsReceived \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rowsReceived \
    op interface \
    ports { rowsReceived_i { I 32 vector } rowsReceived_o { O 32 vector } rowsReceived_i_ap_vld { I 1 bit } rowsReceived_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


