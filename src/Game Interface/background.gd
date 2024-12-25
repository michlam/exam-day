extends Sprite2D

@export var ap: AnimationPlayer
var current_background = "bedroom"

##############
## TEXTURES ##
##############
const texture_dict = {
	"bedroom" = preload("res://assets/Images/Locations/Bedroom.png"),
	"campus" = preload("res://assets/Images/Locations/Campus.png"),
	"classroom" = preload("res://assets/Images/Locations/Classroom.png"),
	"dining room" = preload("res://assets/Images/Locations/Dining Room.png"),
	"hallway" = preload("res://assets/Images/Locations/Hallway.png"),
	"housefront" = preload("res://assets/Images/Locations/Housefront.png"),
	"lecture" = preload("res://assets/Images/Locations/Lecture.png"),
	"streets" = preload("res://assets/Images/Locations/Streets.png"),
	"traffic" = preload("res://assets/Images/Locations/Traffic.png")
}


func change_background(background) -> void:
	ap.play("location_transition")
	current_background = background

func switch_background_image():
	set_texture(texture_dict[current_background])
