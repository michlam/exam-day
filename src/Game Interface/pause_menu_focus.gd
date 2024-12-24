extends CanvasLayer

@export var ap: AnimationPlayer

func _ready():
	visible = false

func toggle():
	if !visible:
		ap.play("pause_menu_toggle_on")
	elif visible:
		ap.play("pause_menu_toggle_off")

func toggle_pause():
	Dialogic.paused = !Dialogic.paused
