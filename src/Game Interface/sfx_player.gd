extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"alarm clock" = preload("res://assets/Audio/SFX/Alarm Clock.wav"),
	"bus" = preload("res://assets/Audio/SFX/Bus.wav"),
	"cooking" = preload("res://assets/Audio/SFX/Cooking.wav"),
	"cutlery" = preload("res://assets/Audio/SFX/Cutlery.wav"),
	"footsteps 1" = preload("res://assets/Audio/SFX/Footsteps 1.wav"),
}


func play_sfx(audio) -> void:
	var tween = create_tween()
	var tween_length = 1
	
	var new_volume = set_volume(audio)
	
	volume_db = -80
	
	stream = audio_dict[audio]
	play()
	tween.tween_property(self, "volume_db", new_volume, tween_length)

func set_volume(audio):
	if audio == "alarm clock":
		return -20
	if audio == "footsteps 1":
		return -10
	if audio == "bus":
		return -6
		
	return 8

func stop_sfx() -> void:
	var tween = create_tween()
	tween.tween_property(self, "volume_db", -80, 1)
	
	await tween.finished
	stop()
