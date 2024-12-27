extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"alarm clock" = preload("res://assets/Audio/SFX/Alarm Clock.wav")
}


func play_sfx(audio) -> void:
	stream = audio_dict[audio]
	play()


func stop_sfx() -> void:
	stop()
