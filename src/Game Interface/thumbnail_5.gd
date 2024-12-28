extends Sprite2D

func _ready():
	if Dialogic.Save.has_slot("slot_5"):
		set_texture(Dialogic.Save.get_slot_thumbnail("slot_5"))
