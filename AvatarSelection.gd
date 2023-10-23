extends Control
signal StartGame
var save_slot : int 
var avatar_selected = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func new_player(SaveFile):
	save_slot = int(SaveFile)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_game_pressed():
	if $PlayerName.text == "" or avatar_selected == "":
		$Popup.show()
	else:
		var player_name = $PlayerName.text
		StartGame.emit(save_slot, player_name, avatar_selected)
		hide()

func _on_ok_pressed():
	$Popup.hide()

func _on_avatar_options_change_avatar(avatar):
	avatar_selected = avatar
