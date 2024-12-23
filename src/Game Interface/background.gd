extends Sprite2D

##############
## TEXTURES ##
##############
const texture_dict = {
	"bedroom" = preload("res://assets/Images/Locations/Bedroom.png"),
	"campus" = preload("res://assets/Images/Locations/Campus.png"),
	"classroom" = preload("res://assets/Images/Locations/Classroom.png"),
	"hallway" = preload("res://assets/Images/Locations/Hallway.png"),
	"housefront" = preload("res://assets/Images/Locations/Housefront.png"),
	"lecture" = preload("res://assets/Images/Locations/Lecture.png"),
	"streets" = preload("res://assets/Images/Locations/Streets.png")
}


func change_background(name) -> void:
	set_texture(texture_dict[name])
