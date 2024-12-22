extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Game Interface Scene entered")
	
	# Check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	
	Dialogic.start("Timeline A")
	get_viewport().set_input_as_handled()
