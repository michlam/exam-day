extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("fade_in")
	initialize_dialogic()


func initialize_dialogic():
	# Check if a dialog is already running
	if Dialogic.current_timeline != null:
		return
	
	Dialogic.start("Timeline A")
	Dialogic.signal_event.connect(_on_dialogic_signal)
	get_viewport().set_input_as_handled()


func _on_dialogic_signal(argument: String):
	match argument:
		"activate_something":
			print("Something was activated!")
			print(Dialogic.VAR.get('my_var_1'))
		"change_background":
			$CanvasLayer/Background.change_background(Dialogic.VAR.get('location'))
	
