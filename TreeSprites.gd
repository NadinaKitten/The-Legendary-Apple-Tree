extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	modulate = Color(1,1,1,0.75)

func _on_area_2d_body_exited(body):
	modulate = Color(1,1,1,1)

func _on_area_2d_mouse_entered():
	$AnimatedSprite2D/TestTree/Sprite2D.show()

func _on_area_2d_mouse_exited():
	$AnimatedSprite2D/TestTree/Sprite2D.hide()
