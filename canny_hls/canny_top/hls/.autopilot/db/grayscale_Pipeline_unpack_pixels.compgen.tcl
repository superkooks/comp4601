# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_65_5_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_65_5_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_sparsemux_65_5_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


set name canny_top_mul_8ns_8ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_mac_muladd_8ns_5ns_15s_15_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
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
    id 50 \
    name row_bytes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes \
    op interface \
    ports { row_bytes_address0 { O 6 vector } row_bytes_ce0 { O 1 bit } row_bytes_q0 { I 8 vector } row_bytes_address1 { O 6 vector } row_bytes_ce1 { O 1 bit } row_bytes_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name row_bytes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_1 \
    op interface \
    ports { row_bytes_1_address0 { O 6 vector } row_bytes_1_ce0 { O 1 bit } row_bytes_1_q0 { I 8 vector } row_bytes_1_address1 { O 6 vector } row_bytes_1_ce1 { O 1 bit } row_bytes_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name row_bytes_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_2 \
    op interface \
    ports { row_bytes_2_address0 { O 6 vector } row_bytes_2_ce0 { O 1 bit } row_bytes_2_q0 { I 8 vector } row_bytes_2_address1 { O 6 vector } row_bytes_2_ce1 { O 1 bit } row_bytes_2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name row_bytes_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_3 \
    op interface \
    ports { row_bytes_3_address0 { O 6 vector } row_bytes_3_ce0 { O 1 bit } row_bytes_3_q0 { I 8 vector } row_bytes_3_address1 { O 6 vector } row_bytes_3_ce1 { O 1 bit } row_bytes_3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name row_bytes_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_4 \
    op interface \
    ports { row_bytes_4_address0 { O 6 vector } row_bytes_4_ce0 { O 1 bit } row_bytes_4_q0 { I 8 vector } row_bytes_4_address1 { O 6 vector } row_bytes_4_ce1 { O 1 bit } row_bytes_4_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name row_bytes_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_5 \
    op interface \
    ports { row_bytes_5_address0 { O 6 vector } row_bytes_5_ce0 { O 1 bit } row_bytes_5_q0 { I 8 vector } row_bytes_5_address1 { O 6 vector } row_bytes_5_ce1 { O 1 bit } row_bytes_5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name row_bytes_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_6 \
    op interface \
    ports { row_bytes_6_address0 { O 6 vector } row_bytes_6_ce0 { O 1 bit } row_bytes_6_q0 { I 8 vector } row_bytes_6_address1 { O 6 vector } row_bytes_6_ce1 { O 1 bit } row_bytes_6_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name row_bytes_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_7 \
    op interface \
    ports { row_bytes_7_address0 { O 6 vector } row_bytes_7_ce0 { O 1 bit } row_bytes_7_q0 { I 8 vector } row_bytes_7_address1 { O 6 vector } row_bytes_7_ce1 { O 1 bit } row_bytes_7_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name row_bytes_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_8 \
    op interface \
    ports { row_bytes_8_address0 { O 6 vector } row_bytes_8_ce0 { O 1 bit } row_bytes_8_q0 { I 8 vector } row_bytes_8_address1 { O 6 vector } row_bytes_8_ce1 { O 1 bit } row_bytes_8_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name row_bytes_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_9 \
    op interface \
    ports { row_bytes_9_address0 { O 6 vector } row_bytes_9_ce0 { O 1 bit } row_bytes_9_q0 { I 8 vector } row_bytes_9_address1 { O 6 vector } row_bytes_9_ce1 { O 1 bit } row_bytes_9_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name row_bytes_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_10 \
    op interface \
    ports { row_bytes_10_address0 { O 6 vector } row_bytes_10_ce0 { O 1 bit } row_bytes_10_q0 { I 8 vector } row_bytes_10_address1 { O 6 vector } row_bytes_10_ce1 { O 1 bit } row_bytes_10_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name row_bytes_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_11 \
    op interface \
    ports { row_bytes_11_address0 { O 6 vector } row_bytes_11_ce0 { O 1 bit } row_bytes_11_q0 { I 8 vector } row_bytes_11_address1 { O 6 vector } row_bytes_11_ce1 { O 1 bit } row_bytes_11_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name row_bytes_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_12 \
    op interface \
    ports { row_bytes_12_address0 { O 6 vector } row_bytes_12_ce0 { O 1 bit } row_bytes_12_q0 { I 8 vector } row_bytes_12_address1 { O 6 vector } row_bytes_12_ce1 { O 1 bit } row_bytes_12_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name row_bytes_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_13 \
    op interface \
    ports { row_bytes_13_address0 { O 6 vector } row_bytes_13_ce0 { O 1 bit } row_bytes_13_q0 { I 8 vector } row_bytes_13_address1 { O 6 vector } row_bytes_13_ce1 { O 1 bit } row_bytes_13_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name row_bytes_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_14 \
    op interface \
    ports { row_bytes_14_address0 { O 6 vector } row_bytes_14_ce0 { O 1 bit } row_bytes_14_q0 { I 8 vector } row_bytes_14_address1 { O 6 vector } row_bytes_14_ce1 { O 1 bit } row_bytes_14_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name row_bytes_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_15 \
    op interface \
    ports { row_bytes_15_address0 { O 6 vector } row_bytes_15_ce0 { O 1 bit } row_bytes_15_q0 { I 8 vector } row_bytes_15_address1 { O 6 vector } row_bytes_15_ce1 { O 1 bit } row_bytes_15_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name row_bytes_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_16 \
    op interface \
    ports { row_bytes_16_address0 { O 6 vector } row_bytes_16_ce0 { O 1 bit } row_bytes_16_q0 { I 8 vector } row_bytes_16_address1 { O 6 vector } row_bytes_16_ce1 { O 1 bit } row_bytes_16_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name row_bytes_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_17 \
    op interface \
    ports { row_bytes_17_address0 { O 6 vector } row_bytes_17_ce0 { O 1 bit } row_bytes_17_q0 { I 8 vector } row_bytes_17_address1 { O 6 vector } row_bytes_17_ce1 { O 1 bit } row_bytes_17_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name row_bytes_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_18 \
    op interface \
    ports { row_bytes_18_address0 { O 6 vector } row_bytes_18_ce0 { O 1 bit } row_bytes_18_q0 { I 8 vector } row_bytes_18_address1 { O 6 vector } row_bytes_18_ce1 { O 1 bit } row_bytes_18_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name row_bytes_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_19 \
    op interface \
    ports { row_bytes_19_address0 { O 6 vector } row_bytes_19_ce0 { O 1 bit } row_bytes_19_q0 { I 8 vector } row_bytes_19_address1 { O 6 vector } row_bytes_19_ce1 { O 1 bit } row_bytes_19_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name row_bytes_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_20 \
    op interface \
    ports { row_bytes_20_address0 { O 6 vector } row_bytes_20_ce0 { O 1 bit } row_bytes_20_q0 { I 8 vector } row_bytes_20_address1 { O 6 vector } row_bytes_20_ce1 { O 1 bit } row_bytes_20_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name row_bytes_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_21 \
    op interface \
    ports { row_bytes_21_address0 { O 6 vector } row_bytes_21_ce0 { O 1 bit } row_bytes_21_q0 { I 8 vector } row_bytes_21_address1 { O 6 vector } row_bytes_21_ce1 { O 1 bit } row_bytes_21_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name row_bytes_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_22 \
    op interface \
    ports { row_bytes_22_address0 { O 6 vector } row_bytes_22_ce0 { O 1 bit } row_bytes_22_q0 { I 8 vector } row_bytes_22_address1 { O 6 vector } row_bytes_22_ce1 { O 1 bit } row_bytes_22_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name row_bytes_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_23 \
    op interface \
    ports { row_bytes_23_address0 { O 6 vector } row_bytes_23_ce0 { O 1 bit } row_bytes_23_q0 { I 8 vector } row_bytes_23_address1 { O 6 vector } row_bytes_23_ce1 { O 1 bit } row_bytes_23_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name row_bytes_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_24 \
    op interface \
    ports { row_bytes_24_address0 { O 6 vector } row_bytes_24_ce0 { O 1 bit } row_bytes_24_q0 { I 8 vector } row_bytes_24_address1 { O 6 vector } row_bytes_24_ce1 { O 1 bit } row_bytes_24_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name row_bytes_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_25 \
    op interface \
    ports { row_bytes_25_address0 { O 6 vector } row_bytes_25_ce0 { O 1 bit } row_bytes_25_q0 { I 8 vector } row_bytes_25_address1 { O 6 vector } row_bytes_25_ce1 { O 1 bit } row_bytes_25_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name row_bytes_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_26 \
    op interface \
    ports { row_bytes_26_address0 { O 6 vector } row_bytes_26_ce0 { O 1 bit } row_bytes_26_q0 { I 8 vector } row_bytes_26_address1 { O 6 vector } row_bytes_26_ce1 { O 1 bit } row_bytes_26_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name row_bytes_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_27 \
    op interface \
    ports { row_bytes_27_address0 { O 6 vector } row_bytes_27_ce0 { O 1 bit } row_bytes_27_q0 { I 8 vector } row_bytes_27_address1 { O 6 vector } row_bytes_27_ce1 { O 1 bit } row_bytes_27_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name row_bytes_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_28 \
    op interface \
    ports { row_bytes_28_address0 { O 6 vector } row_bytes_28_ce0 { O 1 bit } row_bytes_28_q0 { I 8 vector } row_bytes_28_address1 { O 6 vector } row_bytes_28_ce1 { O 1 bit } row_bytes_28_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name row_bytes_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_29 \
    op interface \
    ports { row_bytes_29_address0 { O 6 vector } row_bytes_29_ce0 { O 1 bit } row_bytes_29_q0 { I 8 vector } row_bytes_29_address1 { O 6 vector } row_bytes_29_ce1 { O 1 bit } row_bytes_29_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name row_bytes_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_30 \
    op interface \
    ports { row_bytes_30_address0 { O 6 vector } row_bytes_30_ce0 { O 1 bit } row_bytes_30_q0 { I 8 vector } row_bytes_30_address1 { O 6 vector } row_bytes_30_ce1 { O 1 bit } row_bytes_30_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name row_bytes_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_bytes_31 \
    op interface \
    ports { row_bytes_31_address0 { O 6 vector } row_bytes_31_ce0 { O 1 bit } row_bytes_31_q0 { I 8 vector } row_bytes_31_address1 { O 6 vector } row_bytes_31_ce1 { O 1 bit } row_bytes_31_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_bytes_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name gray_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gray_out \
    op interface \
    ports { gray_out_din { O 8 vector } gray_out_full_n { I 1 bit } gray_out_write { O 1 bit } gray_out_num_data_valid { I 32 vector } gray_out_fifo_cap { I 32 vector } } \
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


