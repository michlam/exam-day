extends AudioStreamPlayer

@onready var MAIN = get_parent().get_parent()

############
## AUDIOS ##
############
const audio_dict = {	
	"bgm_1" = preload("res://assets/Audio/BGM_1.mp3")
}


func play_bgm(audio) -> void:
	if !MAIN.music_enabled:
		return
		
	if !playing:
		stream = audio_dict[audio]
		play()


func stop_bgm() -> void:
	if !MAIN.music_enabled:
		return
		
	stop()
