# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_7_2_11_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_7_2_11_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_7_2_2_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
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
    id 160 \
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
    id 164 \
    name p_anonymous_namespace_lineBuffer_magnitude_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_magnitude_0 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_magnitude_0_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_magnitude_0_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_magnitude_0_q0 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_magnitude_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name p_anonymous_namespace_lineBuffer_direction_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_direction_0 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_direction_0_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_direction_0_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_0_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_direction_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name p_anonymous_namespace_lineBuffer_magnitude_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_magnitude_1 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_magnitude_1_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_magnitude_1_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_magnitude_1_q0 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_magnitude_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name p_anonymous_namespace_lineBuffer_magnitude_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_magnitude_2 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_magnitude_2_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_magnitude_2_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_magnitude_2_q0 { I 11 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_magnitude_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name p_anonymous_namespace_lineBuffer_direction_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_direction_1 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_direction_1_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_direction_1_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_1_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_direction_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name p_anonymous_namespace_lineBuffer_direction_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_anonymous_namespace_lineBuffer_direction_2 \
    op interface \
    ports { p_anonymous_namespace_lineBuffer_direction_2_address0 { O 9 vector } p_anonymous_namespace_lineBuffer_direction_2_ce0 { O 1 bit } p_anonymous_namespace_lineBuffer_direction_2_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_anonymous_namespace_lineBuffer_direction_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name tmp_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_5 \
    op interface \
    ports { tmp_5 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name tmp_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_4 \
    op interface \
    ports { tmp_4 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name tmp_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_s \
    op interface \
    ports { tmp_s { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name tmp_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_6 \
    op interface \
    ports { tmp_6 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name tmp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp \
    op interface \
    ports { tmp { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name tmp_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_2 \
    op interface \
    ports { tmp_2 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name tmp_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_3 \
    op interface \
    ports { tmp_3 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name tmp_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_1 \
    op interface \
    ports { tmp_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
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
    id 161 \
    name select_ln14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14 \
    op interface \
    ports { select_ln14 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
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
    id 163 \
    name select_ln14_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln14_1 \
    op interface \
    ports { select_ln14_1 { I 2 vector } } \
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


