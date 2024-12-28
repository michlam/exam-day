extends Label

@onready var MAIN = get_parent().get_parent().get_parent().get_parent()


func _ready():
	text = "SFX ON"


func _on_button_mouse_entered() -> void:
	label_settings.font_color = Color("DARK_SALMON")


func _on_button_mouse_exited() -> void:
	label_settings.font_color = Color("BLACK")


func _on_button_pressed() -> void:
	MAIN.sfx_enabled = !MAIN.sfx_enabled
	
	if MAIN.sfx_enabled:
		text = "SFX ON"
	else:
		text = "SFX OFF"
