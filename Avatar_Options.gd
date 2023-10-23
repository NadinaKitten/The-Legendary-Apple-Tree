extends Control
signal change_avatar
#add all of the Avatar options, connect to button pressed
var Avatar1 = load("res://Sprites/Avatar1.tres")
var Avatar2 = load("res://Sprites/Avatar2.tres")
var Avatar3 = load("res://Sprites/Avatar3.tres")
var Avatar4 = load("res://Sprites/Avatar4.tres")
var Avatar5 = load("res://Sprites/Avatar5.tres")
var Avatar6 = load("res://Sprites/Avatar6.tres")
var Avatar7 = load("res://Sprites/Avatar7.tres")
var Avatar8 = load("res://Sprites/Avatar8.tres")
var Avatar9 = load("res://Sprites/Avatar9.tres")
var Avatar10 = load("res://Sprites/Avatar10.tres")
var Avatar11 = load("res://Sprites/Avatar11.tres")
var Avatar12 = load("res://Sprites/Avatar12.tres")









# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_avatar_1_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar1
	change_avatar.emit("res://Sprites/Avatar1.tres")

func _on_avatar_2_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar2
	change_avatar.emit("res://Sprites/Avatar2.tres")

func _on_avatar_3_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar3
	change_avatar.emit("res://Sprites/Avatar3.tres")

func _on_avatar_4_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar4
	change_avatar.emit("res://Sprites/Avatar4.tres")
	
func _on_avatar_5_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar5
	change_avatar.emit("res://Sprites/Avatar5.tres")

func _on_avatar_6_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar6
	change_avatar.emit("res://Sprites/Avatar6.tres")
	
func _on_avatar_7_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar7
	change_avatar.emit("res://Sprites/Avatar7.tres")

func _on_avatar_8_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar8
	change_avatar.emit("res://Sprites/Avatar8.tres")
	
func _on_avatar_9_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar9
	change_avatar.emit("res://Sprites/Avatar9.tres")
	
func _on_avatar_10_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar10
	change_avatar.emit("res://Sprites/Avatar10.tres")
	
func _on_avatar_11_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar11
	change_avatar.emit("res://Sprites/Avatar11.tres")
	
func _on_avatar_12_pressed():
	$AnimatedSprite2D.sprite_frames = Avatar12
	change_avatar.emit("res://Sprites/Avatar12.tres")

func _on_up_pressed():
	if $AnimatedSprite2D/Up:
		$AnimatedSprite2D.play("Up")
	else:
		pass

func _on_down_pressed():
	if $AnimatedSprite2D/Down:
		$AnimatedSprite2D.play("Down")
	else:
		pass

func _on_right_pressed():
	if $AnimatedSprite2D/Right:
		$AnimatedSprite2D.play("Right")
	else:
		pass

func _on_left_pressed():
	if $AnimatedSprite2D/Left:
		$AnimatedSprite2D.play("Left")
	else:
		pass
