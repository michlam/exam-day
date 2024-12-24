extends TextureButton

func _on_mouse_entered() -> void:
	scale = Vector2(1.7, 1.7)


func _on_mouse_exited() -> void:
	scale = Vector2(1.5, 1.5)
