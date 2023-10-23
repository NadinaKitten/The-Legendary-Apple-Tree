extends Control
var prev_obj : Object
var save_data = ""
var m_Password = "123456"
var m_GameStateFile = "user://savedgame" + save_data + ".sav"
#var m_GameStateFile = "user://savedgame1.sav"
# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.position = $StartPosition.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#"ui_cancel" listens for pressing Esc key.  Can use it to open an Options menu.

func _on_main_menu_new_start(save_slot, player_name, avatar):
	save_data = save_slot
	$MainMenu.hide()
	$Tilemap/AudioStreamPlayer.play()
	$Player/AnimatedSprite2D.sprite_frames = load(avatar)
