extends Area2D
#load creates the scene at runtime, while preload happens whent he compiler reads the script.
#preloading would be useful to allow users to change their avatar appearance at any time, as it will already be loaded.
#Might be able to create all the avatar options in one scene, then select a specific child branch to instantiate.
var scene = load("res://Female1.tscn")
#or var scene = preload("filepath in above format)
# var instance = scene.instantiate()
#add_child(instance)
#preload takes more lines to implement, but makes instancing faster
var player_name : String = ""
var player_stamina : int = 0
var player_exp : float = 0
#from tutorial at https://www.nightquestgames.com/godot-4-save-and-load-games-how-to-build-a-robust-system/
var m_Password = "123456"
var m_GameStateFile = "user://savedgame1.sav"

@onready var NodeLineEditName: LineEdit = $TestSaveLoadScreen/PlayerName
@onready var NodeLineEditStamina: LineEdit = $TestSaveLoadScreen/PlayerStamina
@onready var NodeLineEditEXP: LineEdit = $TestSaveLoadScreen/PlayerExp

func _UpdateUserInterface() -> void:
	NodeLineEditName.text = str(player_name)
	NodeLineEditStamina.text = str(player_stamina)
	NodeLineEditEXP.text = str(player_exp)

func _UpdateObjectProperties() -> void:
	player_name = str(NodeLineEditName.text)
	player_stamina = int(NodeLineEditStamina.text)
	player_exp = float(NodeLineEditEXP.text)

func _AreUserInterfaceFieldsEmpty() -> bool:
	return(NodeLineEditName.text == "" or 	\
			NodeLineEditStamina.text == "" or \
			NodeLineEditEXP.text == "")


#Serialize and write to file
func Serialize(file: FileAccess) -> void:
	file.store_pascal_string(player_name) #stores a string
	file.store_32(player_stamina) #stores a 32 bit integer
	file.store_float(player_exp) #stores a 32 bit float

#reads properties from the file and deserializes
func Deserialize(file: FileAccess) -> void:
	player_name = file.get_pascal_string()
	player_stamina = file.get_32()
	player_exp = file.get_float()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SaveLoadGame.Initialize(m_GameStateFile, m_Password)

func _exit_tree() -> void:
	SaveLoadGame.Clear()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_test_save_load_screen_save_game_pressed():
	if (not _AreUserInterfaceFieldsEmpty()):
		_UpdateObjectProperties()
		
		var status = SaveLoadGame.OpenFile(FileAccess.WRITE)
		if (status != OK):
			print("Unable to open the file %s.  Received error: %d" % [m_GameStateFile, status])
			return
		SaveLoadGame.Serialize(self)
		SaveLoadGame.CloseFile()

func _on_test_save_load_screen_load_game_pressed():
	var status = SaveLoadGame.OpenFile(FileAccess.READ)
	if (status != OK):
		print("Unable to open the file %s.  Received error: %d" % [m_GameStateFile, status])
		return
	SaveLoadGame.Deserialize(self)
	SaveLoadGame.CloseFile()
	
	_UpdateUserInterface()
