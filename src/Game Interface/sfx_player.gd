extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"alarm clock" = preload("res://assets/Audio/SFX/Alarm Clock.wav")
}


func play_sfx(audio) -> void:
	var tween = create_tween()
	
	volume_db = -80
	stream = audio_dict[audio]
	play()
	tween.tween_property(self, "volume_db", -25, 1)


func stop_sfx() -> void:
	var tween = create_tween()
	tween.tween_property(self, "volume_db", -80, 1)
	
	await tween.finished
	stop()
