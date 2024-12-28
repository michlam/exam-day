extends CanvasLayer

@export var ap: AnimationPlayer
@export var pap: AnimationPlayer

var transitioning = false
var transitioning_animation = ""

func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("escape"):
		toggle()

func toggle():
	if !visible:
		Dialogic.Save.take_thumbnail()
		pap.play("pause_menu_toggle_on")
	elif visible:
		pap.play("pause_menu_toggle_off")
	
	if !Dialogic.VAR.get('pause_disabled'):
		Dialogic.paused = !Dialogic.paused
	
