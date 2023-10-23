extends CharacterBody2D
#class_name SaveLoadGame

var m_File : FileAccess
var m_FilePath : String
var m_Password : String

func Initialize(path : String, password : String) -> void:
	m_FilePath = path
	m_Password = password

func Clear() -> void:
	m_File = null
	m_FilePath = ""
	m_Password = ""

func OpenFile(access : FileAccess.ModeFlags) -> int:
	m_File = FileAccess.open_encrypted_with_pass(m_FilePath, access, m_Password)
	return FileAccess.get_open_error() if (m_File == null) else OK

func CloseFile() -> void:
	m_File = null

func Serialize(object) -> void:
	object.Serialize(m_File)

func Deserialize(object) -> void:
	object.Deserialize(m_File)
