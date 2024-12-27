extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"alarm clock" = preload("res://assets/Audio/SFX/Alarm Clock.wav"),
	"cooking" = preload("res://assets/Audio/SFX/Cooking.wav"),
	"cutlery" = preload("res://assets/Audio/SFX/Cutlery.wav"),
	"footsteps 1" = preload("res://assets/Audio/SFX/Footsteps_1.wav"),
}


func play_sfx(audio) -> void:
	var tween = create_tween()
	var tween_length = 1
	var new_volume = 8
	
	if audio == "alarm clock":
		new_volume = -20
	if audio == "footsteps 1":
		tween_length = 0
	
	volume_db = -80
	
	stream = audio_dict[audio]
	play()
	tween.tween_property(self, "volume_db", new_volume, tween_length)


func stop_sfx() -> void:
	var tween = create_tween()
	tween.tween_property(self, "volume_db", -80, 1)
	
	await tween.finished
	stop()
