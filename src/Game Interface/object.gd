extends Sprite2D

@export var ap: AnimationPlayer

##############
## TEXTURES ##
##############
const texture_dict = {
	"alarm" = preload("res://assets/Images/Objects/Alarm.png"),
}

func place_object(name) -> void:
	set_texture(texture_dict[name])
	ap.play("place_object")


func remove_object() -> void:
	ap.play("remove_object")
