extends CanvasLayer

var mode = "save" # Can be save or load modes
@export var bgm_player: AudioStreamPlayer
@export var background: Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


func _on_save_button_pressed() -> void:
	mode = "save"
	visible = true


func _on_load_button_pressed() -> void:
	mode = "load"
	visible = true


func _input(event):
	if event.is_action_pressed("escape"):
		visible = false


func _on_load_1_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_1", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load1/Thumbnail.set_texture(Dialogic.Save.get_slot_thumbnail("slot_1"))

	if mode == "load":
		if Dialogic.Save.has_slot("slot_1"):
			var location = Dialogic.Save.get_slot_info("slot_1").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_1")
