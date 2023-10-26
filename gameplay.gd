extends Control
var prev_obj : Object

#these need put into player data.  Changes to main menu also need updated to player data.
var save_data = ""
var m_Password = "123456"
var m_GameStateFile = "user://savedgame" + save_data + ".sav"
#var m_GameStateFile = "user://savedgame1.sav"
# Called when the node enters the scene tree for the first time.
func _ready():
	$test_play/Tilemap/Player.position = $StartPosition.position
	$test_play/Tilemap/AudioStreamPlayer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#"ui_cancel" listens for pressing Esc key.  Can use it to open an Options menu.

func _on_main_menu_new_start(save_slot, player_name, avatar):
	save_data = save_slot
	$MainMenu.hide()
	$MainMenu/AudioStreamPlayer.stop()
	if $"/root/PlayerData".music_playing == true:
		$test_play/Tilemap/AudioStreamPlayer.play()
	else:
		$test_play/Menu/SoundControl/Mute.button_pressed = true
	$test_play/Tilemap/Player/AnimatedSprite2D.sprite_frames = load(avatar)

func _on_test_play_volume_update(volume):
	$MainMenu/AudioStreamPlayer.volume_db = volume - 50
