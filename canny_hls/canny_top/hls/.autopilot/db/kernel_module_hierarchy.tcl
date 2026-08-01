set ModuleHierarchy {[{
"Name" : "canny_top", "RefName" : "canny_top","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "1","Type" : "sequential"},
	{"Name" : "grayscale_U0", "RefName" : "grayscale","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_7_1","RefName" : "VITIS_LOOP_7_1","ID" : "3","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_grayscale_Pipeline_burst_read_fu_225", "RefName" : "grayscale_Pipeline_burst_read","ID" : "4","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "burst_read","RefName" : "burst_read","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_grayscale_Pipeline_unpack_bytes_fu_232", "RefName" : "grayscale_Pipeline_unpack_bytes","ID" : "6","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "unpack_bytes","RefName" : "unpack_bytes","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_grayscale_Pipeline_unpack_pixels_fu_269", "RefName" : "grayscale_Pipeline_unpack_pixels","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "unpack_pixels","RefName" : "unpack_pixels","ID" : "9","Type" : "pipeline"},]},]},]},
	{"Name" : "gaussian_blur_U0", "RefName" : "gaussian_blur","ID" : "10","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_59_1","RefName" : "VITIS_LOOP_59_1","ID" : "11","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_63_2_fu_135", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_63_2","ID" : "12","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_63_2","RefName" : "VITIS_LOOP_63_2","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_82_4_fu_142", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_82_4","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_82_4","RefName" : "VITIS_LOOP_82_4","ID" : "15","Type" : "pipeline"},]},
		{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_130_8_fu_156", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_130_8","ID" : "16","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_130_8","RefName" : "VITIS_LOOP_130_8","ID" : "17","Type" : "pipeline"},]},]},]},
	{"Name" : "sobel_U0", "RefName" : "sobel","ID" : "18","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_92_1","RefName" : "VITIS_LOOP_92_1","ID" : "19","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_96_2_fu_159", "RefName" : "sobel_Pipeline_VITIS_LOOP_96_2","ID" : "20","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_96_2","RefName" : "VITIS_LOOP_96_2","ID" : "21","Type" : "pipeline"},]},
		{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_149_6_fu_169", "RefName" : "sobel_Pipeline_VITIS_LOOP_149_6","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_149_6","RefName" : "VITIS_LOOP_149_6","ID" : "23","Type" : "pipeline"},]},]},]},
	{"Name" : "non_maximum_suppression_U0", "RefName" : "non_maximum_suppression","ID" : "24","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_46_1","RefName" : "VITIS_LOOP_46_1","ID" : "25","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_50_2_fu_254", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_50_2","ID" : "26","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_50_2","RefName" : "VITIS_LOOP_50_2","ID" : "27","Type" : "pipeline"},]},
		{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_105_5_fu_267", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_105_5","ID" : "28","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_105_5","RefName" : "VITIS_LOOP_105_5","ID" : "29","Type" : "pipeline"},]},]},]},
	{"Name" : "double_threshold_U0", "RefName" : "double_threshold","ID" : "30","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_10_1","RefName" : "VITIS_LOOP_10_1","ID" : "31","Type" : "pipeline"},]},
	{"Name" : "hysteresis_1_U0", "RefName" : "hysteresis_1_s","ID" : "32","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_74_1","RefName" : "VITIS_LOOP_74_1","ID" : "33","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_hysteresis_1_Pipeline_VITIS_LOOP_78_2_fu_165", "RefName" : "hysteresis_1_Pipeline_VITIS_LOOP_78_2","ID" : "34","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_78_2","RefName" : "VITIS_LOOP_78_2","ID" : "35","Type" : "pipeline"},]},
		{"Name" : "grp_hysteresis_1_Pipeline_VITIS_LOOP_143_5_fu_175", "RefName" : "hysteresis_1_Pipeline_VITIS_LOOP_143_5","ID" : "36","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_143_5","RefName" : "VITIS_LOOP_143_5","ID" : "37","Type" : "pipeline"},]},]},]},
	{"Name" : "hysteresis_2_U0", "RefName" : "hysteresis_2_s","ID" : "38","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_74_1","RefName" : "VITIS_LOOP_74_1","ID" : "39","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_hysteresis_2_Pipeline_VITIS_LOOP_78_2_fu_165", "RefName" : "hysteresis_2_Pipeline_VITIS_LOOP_78_2","ID" : "40","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_78_2","RefName" : "VITIS_LOOP_78_2","ID" : "41","Type" : "pipeline"},]},
		{"Name" : "grp_hysteresis_2_Pipeline_VITIS_LOOP_143_5_fu_175", "RefName" : "hysteresis_2_Pipeline_VITIS_LOOP_143_5","ID" : "42","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_143_5","RefName" : "VITIS_LOOP_143_5","ID" : "43","Type" : "pipeline"},]},]},]},
	{"Name" : "hysteresis_3_U0", "RefName" : "hysteresis_3_s","ID" : "44","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_74_1","RefName" : "VITIS_LOOP_74_1","ID" : "45","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_hysteresis_3_Pipeline_VITIS_LOOP_78_2_fu_165", "RefName" : "hysteresis_3_Pipeline_VITIS_LOOP_78_2","ID" : "46","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_78_2","RefName" : "VITIS_LOOP_78_2","ID" : "47","Type" : "pipeline"},]},
		{"Name" : "grp_hysteresis_3_Pipeline_VITIS_LOOP_143_5_fu_175", "RefName" : "hysteresis_3_Pipeline_VITIS_LOOP_143_5","ID" : "48","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_143_5","RefName" : "VITIS_LOOP_143_5","ID" : "49","Type" : "pipeline"},]},]},]},
	{"Name" : "hysteresis_4_U0", "RefName" : "hysteresis_4_s","ID" : "50","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_74_1","RefName" : "VITIS_LOOP_74_1","ID" : "51","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_hysteresis_4_Pipeline_VITIS_LOOP_78_2_fu_165", "RefName" : "hysteresis_4_Pipeline_VITIS_LOOP_78_2","ID" : "52","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_78_2","RefName" : "VITIS_LOOP_78_2","ID" : "53","Type" : "pipeline"},]},
		{"Name" : "grp_hysteresis_4_Pipeline_VITIS_LOOP_143_5_fu_175", "RefName" : "hysteresis_4_Pipeline_VITIS_LOOP_143_5","ID" : "54","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_143_5","RefName" : "VITIS_LOOP_143_5","ID" : "55","Type" : "pipeline"},]},]},]},
	{"Name" : "write_frame_U0", "RefName" : "write_frame","ID" : "56","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_7_1_VITIS_LOOP_8_2","RefName" : "VITIS_LOOP_7_1_VITIS_LOOP_8_2","ID" : "57","Type" : "pipeline"},]},]
}]}