# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_7_2_8_1_1_x BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
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
    id 224 \
    name out_hysteresis1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_hysteresis1 \
    op interface \
    ports { out_hysteresis1_address0 { O 9 vector } out_hysteresis1_ce0 { O 1 bit } out_hysteresis1_we0 { O 1 bit } out_hysteresis1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_hysteresis1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi1EEE_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi1EEE_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2 \
    op interface \
    ports { p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_address0 { O 9 vector } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_ce0 { O 1 bit } p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZN12_GLOBAL_N_110lineBufferILi1EEE_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name tmp_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_35 \
    op interface \
    ports { tmp_35 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name tmp_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_32 \
    op interface \
    ports { tmp_32 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name tmp_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_34 \
    op interface \
    ports { tmp_34 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
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
    id 218 \
    name tmp_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_33 \
    op interface \
    ports { tmp_33 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
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
    id 220 \
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
    id 221 \
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
    id 222 \
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
    id 223 \
    name select_ln18_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln18_4 \
    op interface \
    ports { select_ln18_4 { I 2 vector } } \
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


