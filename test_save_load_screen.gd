extends Control
signal SaveGamePressed
signal LoadGamePressed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#can be designed to have more than 1 save file - will have to customize - user will need to choose a save file even when starting a new game

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_save_pressed():
	SaveGamePressed.emit()

func _on_load_pressed():
	LoadGamePressed.emit()
