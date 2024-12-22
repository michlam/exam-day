extends Node

var main_menu_scene = preload("res://src/Main Menu/main_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var main_menu_instance = main_menu_scene.instantiate()
	add_child(main_menu_instance)
