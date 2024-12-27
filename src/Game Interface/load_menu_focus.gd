extends CanvasLayer

var mode = "save" # Can be save or load modes

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


func _on_save_button_pressed() -> void:
	mode = "save"
	visible = true


func _on_load_button_pressed() -> void:
	mode = "load"
	visible = true

func _input(event):
	if event.is_action_pressed("escape"):
		visible = false
