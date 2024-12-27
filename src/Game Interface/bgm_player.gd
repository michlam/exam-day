extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"bgm_1" = preload("res://assets/Audio/BGM_1.mp3")
}


func play_bgm(audio) -> void:
	stream = audio_dict[audio]
	play()


func stop_bgm() -> void:
	stop()
