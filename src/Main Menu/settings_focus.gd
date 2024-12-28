extends CanvasLayer


func _ready():
	visible = false


func _input(event):
	if event.is_action_pressed("escape"):
		visible = false
