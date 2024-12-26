extends Sprite2D

@export var ap: AnimationPlayer

##############
## TEXTURES ##
##############
const texture_dict = {
	"alarm" = preload("res://assets/Images/Objects/Alarm.png"),
	"exam a" = preload("res://assets/Images/Objects/Exam A.png"),
	"exam b" = preload("res://assets/Images/Objects/Exam B.png"),
	"exam c" = preload("res://assets/Images/Objects/Exam C.png"),
	"pancakes" = preload("res://assets/Images/Objects/Pancakes.png")
}

func place_object(object) -> void:
	set_texture(texture_dict[object])
	ap.play("place_object")


func remove_object() -> void:
	ap.play("remove_object")
