set ModuleHierarchy {[{
"Name" : "conv_fprop3","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_161_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_conv_fprop3_Pipeline_1_fu_234","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_178_3","ID" : "5","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "VITIS_LOOP_164_2","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_52_1","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_54_2","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_57_3_VITIS_LOOP_59_4","ID" : "10","Type" : "pipeline"},]},]},]},]},]},]
}]}