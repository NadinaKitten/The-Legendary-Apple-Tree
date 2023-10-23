extends Area2D
signal PlotClicked

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_mouse_entered():
	if $"/root/PlayerData".player_in_FZ_1 == true:
		$Sprite2D.show()
	else:
		pass

func _on_mouse_exited():
	$Sprite2D.hide()


func _on_input_event(viewport, event, shape_idx):
	if event.is_action("use_tool"):
		#Can comment ount coords, but do NOT remove from script.  Use to find coords for future farm plot expansions
		#var coords = get_global_mouse_position()
		PlotClicked.emit()
		#print("clicked mouse")
	#add code here to check how far away the player is.  If close enough, allow the player to till with hoe or harvest
	#if player is too far, a message needs to print telling player that (chat log?)
