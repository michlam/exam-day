extends CanvasLayer

func _input(event):
	if event.is_action_pressed("escape"):
		visible = false
