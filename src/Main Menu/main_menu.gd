extends Control

func _on_load_button_pressed() -> void:
	$CanvasLayer/LoadMenu.visible = true

func _on_start_button_pressed() -> void:
	$CanvasLayer/TransitionColor.visible = true
	$AnimationPlayer.play("fade_out")
