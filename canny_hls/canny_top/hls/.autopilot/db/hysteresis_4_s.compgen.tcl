# This script segment is generated automatically by AutoPilot

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
    id 193 \
    name out_hysteresis3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_hysteresis3 \
    op interface \
    ports { out_hysteresis3_address0 { O 9 vector } out_hysteresis3_ce0 { O 1 bit } out_hysteresis3_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_hysteresis3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name out_hysteresis4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_hysteresis4 \
    op interface \
    ports { out_hysteresis4_address0 { O 9 vector } out_hysteresis4_ce0 { O 1 bit } out_hysteresis4_we0 { O 1 bit } out_hysteresis4_d0 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_hysteresis4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_d0 { O 2 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi4EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_address0 { O 10 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_we0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_d0 { O 2 vector } p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi4EEE_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
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
    id 195 \
    name p_anonymous_namespace_rowsReceived_4_s \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_anonymous_namespace_rowsReceived_4_s \
    op interface \
    ports { p_anonymous_namespace_rowsReceived_4_s_i { I 32 vector } p_anonymous_namespace_rowsReceived_4_s_o { O 32 vector } p_anonymous_namespace_rowsReceived_4_s_o_ap_vld { O 1 bit } } \
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


