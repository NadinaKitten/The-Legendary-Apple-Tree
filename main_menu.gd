extends CanvasLayer
signal NewStart
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_new_game_pressed():
	$ChooseFile.show() # ChooseFile will need the buttons edited, and script added to change their text
	$IntroScreen.hide()

func _on_save_slot_1_pressed():
	#more functions will need added to prevent overrided save data unintentionally
	$PlayerCreation.show()
	$ChooseFile.hide()
	$PlayerCreation/AvatarSelection.new_player(1)

func _on_save_slot_2_pressed():
	$PlayerCreation.show()
	$ChooseFile.hide()
	$PlayerCreation/AvatarSelection.new_player(2)

func _on_save_slot_3_pressed():
	$PlayerCreation.show()
	$ChooseFile.hide()
	$PlayerCreation/AvatarSelection.new_player(3)

func _on_avatar_selection_start_game(save_slot, player_name, avatar):
	NewStart.emit(save_slot, player_name, avatar)
	$AudioStreamPlayer.stop()
