extends TextureButton

func _on_mouse_entered() -> void:
	$LoadLabel.label_settings.font_color = Color("DARK_SALMON")


func _on_mouse_exited() -> void:
	$LoadLabel.label_settings.font_color = Color("WHITE")
