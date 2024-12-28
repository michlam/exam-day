extends CanvasLayer

var mode = "save" # Can be save or load modes
@export var bgm_player: AudioStreamPlayer
@export var sfx_player: AudioStreamPlayer
@export var background: Sprite2D
@export var report_card: Sprite2D


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
		$Chalkboard/Load1/Thumbnail_1.set_texture(Dialogic.Save.get_slot_thumbnail("slot_1"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_1"):
			var location = Dialogic.Save.get_slot_info("slot_1").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_1")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()


func _on_load_2_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_2", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load2/Thumbnail_2.set_texture(Dialogic.Save.get_slot_thumbnail("slot_2"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_2"):
			var location = Dialogic.Save.get_slot_info("slot_2").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_2")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()


func _on_load_3_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_3", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load3/Thumbnail_3.set_texture(Dialogic.Save.get_slot_thumbnail("slot_3"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_3"):
			var location = Dialogic.Save.get_slot_info("slot_3").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_3")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()


func _on_load_4_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_4", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load4/Thumbnail_4.set_texture(Dialogic.Save.get_slot_thumbnail("slot_4"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_4"):
			var location = Dialogic.Save.get_slot_info("slot_4").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_4")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()


func _on_load_5_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_5", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load5/Thumbnail_5.set_texture(Dialogic.Save.get_slot_thumbnail("slot_5"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_5"):
			var location = Dialogic.Save.get_slot_info("slot_5").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_5")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()


func _on_load_6_pressed() -> void:
	if mode == "save":
		var extra_info = {
			"location": Dialogic.VAR.get("location")
		}
		
		Dialogic.Save.save("slot_6", false, Dialogic.Save.ThumbnailMode.STORE_ONLY, extra_info)
		$Chalkboard/Load6/Thumbnail_6.set_texture(Dialogic.Save.get_slot_thumbnail("slot_6"))

	if mode == "load":
		report_card.visible = false
		sfx_player.stop_sfx()
		if Dialogic.Save.has_slot("slot_6"):
			var location = Dialogic.Save.get_slot_info("slot_6").get("location", "")
			background.change_background(location)
			bgm_player.play_bgm("bgm_1")
			
			Dialogic.Save.load("slot_6")
			
			if Dialogic.VAR.get('end_scene'):
				report_card.initialize_end_scene()
