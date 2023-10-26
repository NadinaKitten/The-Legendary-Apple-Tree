extends Control
signal ToolEquipped
signal ToolUnequipped
signal ToNextDay
signal OpenMenu
var hoe = "Hoe"
var axe = "Axe"
var pickaxe = "Pickaxe"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hoe_toggled(button_pressed):
	if button_pressed == true:
		ToolEquipped.emit(hoe)
	else:
		$"/root/PlayerData".hoe_equipped = false
		ToolUnequipped.emit()

func _on_axe_toggled(button_pressed):
	if button_pressed == true:
		ToolEquipped.emit(axe)
	else:
		$"/root/PlayerData".axe_equipped = false
		ToolUnequipped.emit()
		
func _on_pickaxe_toggled(button_pressed):
	if button_pressed == true:
		ToolEquipped.emit(pickaxe)
	else:
		$"/root/PlayerData".pickaxe_equipped = false
		ToolUnequipped.emit()

func _on_seeds_toggled(button_pressed):
	if $Seeds.button_pressed == true:
		ToolUnequipped.emit()
		$"/root/PlayerData".seed_bag_open = true
		$Seeds.modulate = Color(1,1,1,.5)
		$SeedContainer.show()
	else:
		$"/root/PlayerData".seed_bag_open = false
		$SeedContainer.hide()
		$Seeds.modulate = Color(1,1,1,1)

func _on_potatoes_toggled(button_pressed):
	if button_pressed == true:
		$"/root/PlayerData".seed_equipped = "Potatoes"
	else:
		$"/root/PlayerData".seed_equipped = ""

func _on_carrots_toggled(button_pressed):
	if button_pressed == true:
		$"/root/PlayerData".seed_equipped = "Carrots"
	else:
		$"/root/PlayerData".seed_equipped = ""

func _on_yes_pressed():
	ToNextDay.emit()
	$AdvanceDay.hide()

func _on_no_pressed():
	$AdvanceDay.hide()

func _on_advance_day_close_requested():
	$AdvanceDay.hide()

func _on_button_pressed():
	$CanvasLayer.hide()

func _on_menu_button_pressed():
	OpenMenu.emit()
