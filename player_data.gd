extends Node

var player_name : String
var hoe_equipped : bool = false
var axe_equipped : bool = false
var pickaxe_equipped : bool = false
var seed_bag_open : bool = false
var seed_equipped : String = ""
var player_in_FZ_1 : bool = false
#var test_var = "this is a test"
var FP1_1_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_2_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_3_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_4_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_5_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_6_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_7_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_8_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_9_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_10_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_11_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_12_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_13_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_14_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_15_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}

var FP1_16_state : Dictionary = {"tilled" = false,
								"planted" = false,
								"plant_stage" = 0}


func update_tool_equipped(tool):
	if tool == "Hoe":
		hoe_equipped = true
		axe_equipped = false
		pickaxe_equipped = false
	elif tool == "Axe":
		axe_equipped = true
		hoe_equipped = false
		pickaxe_equipped = false
	elif tool == "Pickaxe":
		pickaxe_equipped = true
		hoe_equipped = false
		axe_equipped = false
	elif tool == "Unequip":
		hoe_equipped = false
		axe_equipped = false
		pickaxe_equipped = false

func check_tool(tool):
	if tool == "Hoe":
		return hoe_equipped
	elif tool == "Axe":
		return axe_equipped
	elif tool == "Pickaxe":
		return pickaxe_equipped
