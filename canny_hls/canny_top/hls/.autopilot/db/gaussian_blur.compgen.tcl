# This script segment is generated automatically by AutoPilot

set name canny_top_srem_32ns_4ns_4_36_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {srem} IMPL {auto_seq} LATENCY 35 ALLOW_PRAGMA 1
}


set name canny_top_srem_32ns_4ns_32_36_seq_1
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
    id 76 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 9 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 8 vector } input_r_address1 { O 9 vector } input_r_ce1 { O 1 bit } input_r_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 9 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name p_anonymous_namespace_lineBuffer_39_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_39_0 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_39_0_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_39_0_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_0_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_0_d0 { O 12 vector } p_anonymous_namespace_lineBuffer_39_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_39_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name p_anonymous_namespace_lineBuffer_39_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_39_1 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_39_1_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_39_1_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_1_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_1_d0 { O 12 vector } p_anonymous_namespace_lineBuffer_39_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_39_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name p_anonymous_namespace_lineBuffer_39_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_39_2 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_39_2_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_39_2_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_2_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_2_d0 { O 12 vector } p_anonymous_namespace_lineBuffer_39_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_39_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name p_anonymous_namespace_lineBuffer_39_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_39_3 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_39_3_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_39_3_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_3_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_3_d0 { O 12 vector } p_anonymous_namespace_lineBuffer_39_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_39_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name p_anonymous_namespace_lineBuffer_39_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_anonymous_namespace_lineBuffer_39_4 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_39_4_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_39_4_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_4_we0 { O 1 bit } p_anonymous_namespace_lineBuffer_39_4_d0 { O 12 vector } p_anonymous_namespace_lineBuffer_39_4_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_39_4'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name p_anonymous_namespace_rowsReceived_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_1 \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_1_i { I 32 vector } p_anonymous_namespace_rowsReceived_1_o { O 32 vector } p_anonymous_namespace_rowsReceived_1_o_ap_vld { O 1 bit } } \
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


