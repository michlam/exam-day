extends TextureButton

func _on_mouse_entered() -> void:
	$Label.label_settings.font_color = Color("DARK_SALMON")


func _on_mouse_exited() -> void:
	$Label.label_settings.font_color = Color("BLACK")
