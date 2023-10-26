extends CharacterBody2D
@export var speed = 300
#signal highlight
#signal deslect

var player_name : String = ""
var player_position : Vector2
var tool_selected : String = ""
var logs_count : int = 0

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

	if velocity.x > 0 and velocity.y == 0:
		$AnimatedSprite2D.animation = "Right"
	elif velocity.x >= 0 and velocity.y > 0:
		$AnimatedSprite2D.animation = "Down"
	elif velocity.x < 0 and velocity.y == 0:
		$AnimatedSprite2D.animation = "Left"
	elif velocity.x <= 0 and velocity.y < 0:
		$AnimatedSprite2D.animation = "Up"
	move_and_collide(velocity * delta)

func _on_hud_tool_equipped(tool): #set the character animations to equip the tool, enabling use with mouse click.
	tool_selected = tool
	$"/root/PlayerData".update_tool_equipped(tool)
	
func _on_hud_tool_unequipped():
	tool_selected = ""
	$"/root/PlayerData".update_tool_equipped("Unequip")


func _on_custom_avatar_custom_avatar(frames):
	$AnimatedSprite2D.sprite_frames = load(frames)
