extends Label

@onready var MAIN = get_parent().get_parent().get_parent().get_parent()


func _ready():
	text = "MUSIC ON"


func _on_button_mouse_entered() -> void:
	label_settings.font_color = Color("DARK_SALMON")


func _on_button_mouse_exited() -> void:
	label_settings.font_color = Color("BLACK")


func _on_button_pressed() -> void:
	MAIN.music_enabled = !MAIN.music_enabled
	
	if MAIN.music_enabled:
		text = "MUSIC ON"
	else:
		text = "MUSIC OFF"
