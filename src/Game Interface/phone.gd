extends Sprite2D

@export var ap: AnimationPlayer


func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("tab") && Dialogic.VAR.FLAGS.get('phone_enabled') && !visible:
		toggle_on()

func toggle_on():
	ap.play("phone_toggle_on")
