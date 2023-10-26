extends CanvasLayer
signal MusicChanged
signal VolumeChanged
signal ChangeAvatar
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_to_game_pressed():
	hide()

func _on_change_avatar_pressed():
	ChangeAvatar.emit()

func _on_mute_toggled(button_pressed):
	if button_pressed == true:
		$"/root/PlayerData".music_playing = false
	else:
		$"/root/PlayerData".music_playing = true
	MusicChanged.emit(button_pressed)

func _on_credits_pressed():
	$Credits2.show()

func _on_main_menu_pressed():#Need to warn about losing info without saving, offer to save
	pass # Replace with function body.

func _on_h_slider_value_changed(value):
	VolumeChanged.emit(value)
