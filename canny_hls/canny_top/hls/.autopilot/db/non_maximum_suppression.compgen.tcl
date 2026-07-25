# This script segment is generated automatically by AutoPilot

set name canny_top_srem_32ns_3ns_32_36_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {srem} IMPL {auto_seq} LATENCY 35 ALLOW_PRAGMA 1
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
    id 121 \
    name out_sobel_magnitude \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_sobel_magnitude \
    op interface \
    ports { out_sobel_magnitude_address0 { O 9 vector } out_sobel_magnitude_ce0 { O 1 bit } out_sobel_magnitude_q0 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_sobel_magnitude'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name out_sobel_direction \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_sobel_direction \
    op interface \
    ports { out_sobel_direction_address0 { O 9 vector } out_sobel_direction_ce0 { O 1 bit } out_sobel_direction_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_sobel_direction'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name out_nonmax \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nonmax \
    op interface \
    ports { out_nonmax_address0 { O 9 vector } out_nonmax_ce0 { O 1 bit } out_nonmax_we0 { O 1 bit } out_nonmax_d0 { O 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nonmax'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name p_anonymous_namespace_lineBuffer_direction \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_direction \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_direction_address0 { O 11 vector } p_anonymous_namespace_lineBuffer_direction_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_d0 { O 2 vector } p_anonymous_namespace_lineBuffer_direction_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_direction'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name p_anonymous_namespace_lineBuffer_25_magnitude_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_25_magnitude_0 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_25_magnitude_0_address0 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_d0 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_q0 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_address1 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_0_ce1 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_0_q1 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_25_magnitude_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name p_anonymous_namespace_lineBuffer_25_magnitude_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_25_magnitude_1 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_25_magnitude_1_address0 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_d0 { O 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_q0 { I 11 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_address1 { O 10 vector } p_anonymous_namespace_lineBuffer_25_magnitude_1_ce1 { O 1 bit } p_anonymous_namespace_lineBuffer_25_magnitude_1_q1 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_25_magnitude_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_anonymous_namespace_rowsReceived_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_2 \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_2_i { I 32 vector } p_anonymous_namespace_rowsReceived_2_o { O 32 vector } p_anonymous_namespace_rowsReceived_2_o_ap_vld { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


