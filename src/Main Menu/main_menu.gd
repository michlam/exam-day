extends Control

@onready var main_node = get_parent()
@onready var game_interface_scene = preload("res://src/Game Interface/game_interface.tscn")

func _on_start_button_pressed() -> void:
	$CanvasLayer/TransitionColor.visible = true
	$AnimationPlayer.play("fade_out")

# Start a new game by transitioning to game interface scene
func start_game() -> void:
	var game_interface_instance = game_interface_scene.instantiate()
	main_node.add_child(game_interface_instance)
	
	queue_free()


func _on_settings_button_pressed() -> void:
	$SettingsFocus.visible = true
