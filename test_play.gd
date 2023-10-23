extends Control
var sprite_to_load = ""

func _ready():
	$Tilemap/CharacterBody2D/AnimatedSprite2D.sprite_frames = load("res://Sprites/Avatar1.tres")

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


func _on_tilemap_advance_day():
	$Camera2D/HUD/AdvanceDay.show()


func _on_hud_to_next_day():
	pass # save data and advance date (not implemented yet)
