extends Control

@onready var main_node = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("fade_in")
	$BackgroundFocus/ObjectFocus.visible = false
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
		"change_background":
			$BackgroundFocus/Background.change_background(Dialogic.VAR.get('location'))
		"place_object":
			$BackgroundFocus/ObjectFocus/Object.place_object(Dialogic.VAR.get('object'))
		"remove_object":
			$BackgroundFocus/ObjectFocus/Object.remove_object()


func _on_quit_button_pressed() -> void:
	$PauseMenuFocus.toggle()
	Dialogic.current_timeline = null
	Dialogic.start("Main Menu")
		
	var main_menu_scene = load("res://src/Main Menu/main_menu.tscn")
	var main_menu_instance = main_menu_scene.instantiate()
	main_node.add_child(main_menu_instance)
	
	queue_free()
