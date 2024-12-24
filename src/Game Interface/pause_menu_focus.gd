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
	if !Dialogic.paused:
		pap.play("pause_menu_toggle_on")
	elif Dialogic.paused:
		pap.play("pause_menu_toggle_off")
		
	Dialogic.paused = !Dialogic.paused
	
