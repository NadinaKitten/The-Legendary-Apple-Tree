extends Control
signal UpdateVars
signal VolumeUpdate
var sprite_to_load = ""

func _ready():
	$Tilemap/Player/AnimatedSprite2D.sprite_frames = load("res://Sprites/Avatar1.tres")

func find_seed_sprite(crop):
	if crop == "Potatoes":
		sprite_to_load = "res://crops/crops-v2/Potatoes.tres"
		return sprite_to_load
	elif crop == "Carrots":
		sprite_to_load = "res://crops/crops-v2/Carrots.tres"
		return sprite_to_load

func _on_tilemap_plant_seed(crop, plot):
	var sprite = find_seed_sprite(crop)
	find_child(plot).find_child("AnimatedSprite2D").sprite_frames = load(sprite)
	get_tree().call_group("FarmPlots", "update_vars", plot, crop)

func _on_tilemap_advance_day():
	$Camera2D/HUD/AdvanceDay.show()

func _on_hud_to_next_day():
	$"/root/PlayerData".calendar_day += 1
	$Camera2D/HUD/CanvasLayer/TextureRect/DayCounter.text = str($"/root/PlayerData".calendar_day)
	$Camera2D/HUD/CanvasLayer.show()
	get_tree().call_group("FarmPlots", "next_day")
	# save data and advance date (not implemented yet)

func _on_hud_open_menu():
	$Menu.show()

func _on_menu_volume_changed(volume):
	$Tilemap/AudioStreamPlayer.volume_db = volume - 50
	VolumeUpdate.emit(volume)
