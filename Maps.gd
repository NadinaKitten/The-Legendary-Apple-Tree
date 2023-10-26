extends TileMap

signal plant_seed
signal AdvanceDay
var player_near_bed : bool = false
var FP1_1 = null
var FP1_2 = null
var FP1_3 = null
var FP1_4 = null
var FP1_5 = null
var FP1_6 = null
var FP1_7 = null
var FP1_8 = null
var FP1_9 = null
var FP1_10 = null
var FP1_11 = null
var FP1_12 = null
var FP1_13 = null
var FP1_14 = null
var FP1_15 = null
var FP1_16 = null

# Called when the node enters the scene tree for the first time.
func _ready():
	FP1_1 = $"/root/PlayerData".FP1_1_state
	FP1_2 = $"/root/PlayerData".FP1_2_state
	FP1_3 = $"/root/PlayerData".FP1_3_state
	FP1_4 = $"/root/PlayerData".FP1_4_state
	FP1_5 = $"/root/PlayerData".FP1_5_state
	FP1_6 = $"/root/PlayerData".FP1_6_state
	FP1_7 = $"/root/PlayerData".FP1_7_state
	FP1_8 = $"/root/PlayerData".FP1_8_state
	FP1_9 = $"/root/PlayerData".FP1_9_state
	FP1_10 = $"/root/PlayerData".FP1_10_state
	FP1_11 = $"/root/PlayerData".FP1_11_state
	FP1_12 = $"/root/PlayerData".FP1_12_state
	FP1_13 = $"/root/PlayerData".FP1_13_state
	FP1_14 = $"/root/PlayerData".FP1_14_state
	FP1_15 = $"/root/PlayerData".FP1_15_state
	FP1_16 = $"/root/PlayerData".FP1_16_state

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#This func can be commented out, but do NOT remove from script.  Use to add new farm plots
#func _on_farm_plot_plot_name(name, coords):
	#var map_coords = local_to_map(to_local(coords))
	#print(map_coords)


func _on_farm_plot_1_1_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_1.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_1.tilled = true
			set_cell(1, Vector2i(0, 26), 4, Vector2i(0,0))
			set_cell(1, Vector2i(1, 26), 4, Vector2i(1,0))
			set_cell(1, Vector2i(0, 27), 4, Vector2i(0,1))
			set_cell(1, Vector2i(1, 27), 4, Vector2i(1,1))
		elif FP1_1.tilled == true and FP1_1.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_1.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_1")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_1.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_2_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_2.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_2.tilled = true
			set_cell(1, Vector2i(0, 28), 4, Vector2i(0,0))
			set_cell(1, Vector2i(1, 28), 4, Vector2i(1,0))
			set_cell(1, Vector2i(0, 29), 4, Vector2i(0,1))
			set_cell(1, Vector2i(1, 29), 4, Vector2i(1,1))
		elif FP1_2.tilled == true and FP1_2.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_2.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_2")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_2.planted == true:
			pass
	else:
		pass
		
func _on_farm_plot_1_3_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_3.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_3.tilled = true
			set_cell(1, Vector2i(0, 30), 4, Vector2i(0,0))
			set_cell(1, Vector2i(1, 30), 4, Vector2i(1,0))
			set_cell(1, Vector2i(0, 31), 4, Vector2i(0,1))
			set_cell(1, Vector2i(1, 31), 4, Vector2i(1,1))
		elif FP1_3.tilled == true and FP1_3.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_3.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_3")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_3.planted == true:
			pass
	else:
		pass
		
func _on_farm_plot_1_4_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_4.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_4.tilled = true
			set_cell(1, Vector2i(0, 32), 4, Vector2i(0,0))
			set_cell(1, Vector2i(1, 32), 4, Vector2i(1,0))
			set_cell(1, Vector2i(0, 33), 4, Vector2i(0,1))
			set_cell(1, Vector2i(1, 33), 4, Vector2i(1,1))
		elif FP1_4.tilled == true and FP1_4.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_4.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_4")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_4.planted == true:
			pass
	else:
		pass
		
func _on_farm_plot_1_5_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_5.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_5.tilled = true
			set_cell(1, Vector2i(-2, 26), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-1, 26), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-2, 27), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-1, 27), 4, Vector2i(1,1))
		elif FP1_5.tilled == true and FP1_5.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_5.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_5")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_5.planted == true:
			pass
	else:
		pass
		
func _on_farm_plot_1_6_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_6.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_6.tilled = true
			set_cell(1, Vector2i(-2, 28), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-1, 28), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-2, 29), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-1, 29), 4, Vector2i(1,1))
		elif FP1_6.tilled == true and FP1_6.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_6.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_6")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_6.planted == true:
			pass
	else:
		pass
		
func _on_farm_plot_1_7_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_7.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_7.tilled = true
			set_cell(1, Vector2i(-2, 30), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-1, 30), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-2, 31), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-1, 31), 4, Vector2i(1,1))
		elif FP1_7.tilled == true and FP1_7.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_7.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_7")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_7.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_8_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_8.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_8.tilled = true
			set_cell(1, Vector2i(-2, 32), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-1, 32), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-2, 33), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-1, 33), 4, Vector2i(1,1))
		elif FP1_8.tilled == true and FP1_8.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_8.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_8")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_8.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_9_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_9.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_9.tilled = true
			set_cell(1, Vector2i(-4, 26), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-3, 26), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-4, 27), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-3, 27), 4, Vector2i(1,1))
		elif FP1_9.tilled == true and FP1_9.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_9.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_9")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_9.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_10_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_10.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_10.tilled = true
			set_cell(1, Vector2i(-4, 28), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-3, 28), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-4, 29), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-3, 29), 4, Vector2i(1,1))
		elif FP1_10.tilled == true and FP1_10.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_10.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_10")
			else: #maybe show some info about the crop state?
				pass
		elif FP1_10.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_11_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_11.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_11.tilled = true
			set_cell(1, Vector2i(-4, 30), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-3, 30), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-4, 31), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-3, 31), 4, Vector2i(1,1))
		elif FP1_11.tilled == true and FP1_11.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_11.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_11")
			else:
				pass
		elif FP1_11.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_12_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_12.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_12.tilled = true
			set_cell(1, Vector2i(-4, 32), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-3, 32), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-4, 33), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-3, 33), 4, Vector2i(1,1))
		elif FP1_12.tilled == true and FP1_12.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_12.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_12")
			else: 
				pass
		elif FP1_12.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_13_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_13.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_13.tilled = true
			set_cell(1, Vector2i(-6, 26), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-5, 26), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-6, 27), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-5, 27), 4, Vector2i(1,1))
		elif FP1_13.tilled == true and FP1_13.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_13.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_13")
			else:
				pass
		elif FP1_13.planted == true:
			pass
	else:
		pass

func _on_farm_plot_1_14_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_14.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_14.tilled = true
			set_cell(1, Vector2i(-6, 28), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-5, 28), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-6, 29), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-5, 29), 4, Vector2i(1,1))
		elif FP1_14.tilled == true and FP1_14.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_14.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_14")
			else: 
				pass
		elif FP1_14.planted == true:
			pass #this is where I can add info about crop state
	else:
		pass

func _on_farm_plot_1_15_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_15.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_15.tilled = true
			set_cell(1, Vector2i(-6, 30), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-5, 30), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-6, 31), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-5, 31), 4, Vector2i(1,1))
		elif FP1_15.tilled == true and FP1_15.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_15.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_15")
			else: 
				pass
		elif FP1_15.planted == true:
			pass #this is where I can add info about crop state
	else:
		pass

func _on_farm_plot_1_16_plot_clicked():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		if FP1_16.tilled == false and $"/root/PlayerData".hoe_equipped == true:
			FP1_16.tilled = true
			set_cell(1, Vector2i(-6, 32), 4, Vector2i(0,0))
			set_cell(1, Vector2i(-5, 32), 4, Vector2i(1,0))
			set_cell(1, Vector2i(-6, 33), 4, Vector2i(0,1))
			set_cell(1, Vector2i(-5, 33), 4, Vector2i(1,1))
		elif FP1_16.tilled == true and FP1_16.planted == false:
			if $"/root/PlayerData".seed_bag_open == true and $"/root/PlayerData".seed_equipped:
				FP1_16.planted = true
				plant_seed.emit($"/root/PlayerData".seed_equipped, "FarmPlot1_16")
			else:
				pass
		elif FP1_15.planted == true:
			pass #this is where I can add info about crop state
	else:
		pass

func _on_farm_zone_1_body_entered(body):
	$"/root/PlayerData".player_in_FZ_1 = true

func _on_farm_zone_1_body_exited(body):
	$"/root/PlayerData".player_in_FZ_1 = false

func _on_sleep_area_body_entered(body):
	set_layer_modulate(4,Color(1,1,1,.25))

func _on_sleep_area_body_exited(body):
	set_layer_modulate(4, Color(1,1,1,1))

func _on_bed_input_event(viewport, event, shape_idx):
	if event.is_action("use_tool"):
		if player_near_bed == true:
			AdvanceDay.emit()
		else:
			pass

func _on_bed_body_entered(body):
	player_near_bed = true

func _on_bed_body_exited(body):
	player_near_bed = false

func _on_menu_music_changed(pressed):
	if pressed == true:
		$AudioStreamPlayer.stream_paused = true
	else:
		$AudioStreamPlayer.stream_paused = false

func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()
