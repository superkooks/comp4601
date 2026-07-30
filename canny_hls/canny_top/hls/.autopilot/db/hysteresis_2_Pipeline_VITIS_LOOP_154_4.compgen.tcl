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
    id 262 \
    name out_hysteresis2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_hysteresis2 \
    op interface \
    ports { out_hysteresis2_address0 { O 9 vector } out_hysteresis2_ce0 { O 1 bit } out_hysteresis2_we0 { O 1 bit } out_hysteresis2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_hysteresis2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi2EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi2EEE_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi2EEE_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name tmp_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_28 \
    op interface \
    ports { tmp_28 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name tmp_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_25 \
    op interface \
    ports { tmp_25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name tmp_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_27 \
    op interface \
    ports { tmp_27 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name tmp_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_s \
    op interface \
    ports { tmp_s { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name tmp_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_26 \
    op interface \
    ports { tmp_26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name tmp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp \
    op interface \
    ports { tmp { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name outputRow \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputRow \
    op interface \
    ports { outputRow { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name select_ln18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln18 \
    op interface \
    ports { select_ln18 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_smodpost \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_smodpost \
    op interface \
    ports { p_smodpost { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name select_ln18_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln18_3 \
    op interface \
    ports { select_ln18_3 { I 2 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName canny_top_flow_control_loop_pipe_sequential_init_U
set CompName canny_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix canny_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


