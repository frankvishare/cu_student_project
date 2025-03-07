set ModuleHierarchy {[{
"Name" : "conv_fprop","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_89_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_conv_fprop_Pipeline_1_fu_235","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_106_3","ID" : "5","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "VITIS_LOOP_92_2","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_52_1","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_54_2","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_57_3_VITIS_LOOP_59_4","ID" : "10","Type" : "pipeline"},]},]},]},]},]},]
}]}