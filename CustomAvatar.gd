extends Control
signal CustomAvatar
var avatar_chosen = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_save_pressed(): #catch avatar selection and signal it
	CustomAvatar.emit(avatar_chosen)
	hide()

func _on_grid_container_change_avatar(avatar):
	avatar_chosen = avatar

func _on_menu_change_avatar():
	show()
