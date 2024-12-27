extends AudioStreamPlayer

############
## AUDIOS ##
############
const audio_dict = {	
	"alarm clock" = preload("res://assets/Audio/SFX/Alarm Clock.wav"),
	"ambience" = preload("res://assets/Audio/SFX/Ambience.wav"),
	"bike" = preload("res://assets/Audio/SFX/Bike.wav"),
	"bus" = preload("res://assets/Audio/SFX/Bus.wav"),
	"clothes" = preload("res://assets/Audio/SFX/Clothes.wav"),
	"cooking" = preload("res://assets/Audio/SFX/Cooking.wav"),
	"cutlery" = preload("res://assets/Audio/SFX/Cutlery.wav"),
	"footsteps 1" = preload("res://assets/Audio/SFX/Footsteps 1.wav"),
	"footsteps 2" = preload("res://assets/Audio/SFX/Footsteps 2.wav"),
	"notification" = preload("res://assets/Audio/SFX/Notification.ogg"),
	"traffic" = preload("res://assets/Audio/SFX/Traffic.wav")
}


func play_sfx(audio) -> void:
	var tween = create_tween()
	var tween_length = set_tween_length(audio)
	var new_volume = set_volume(audio)
	
	volume_db = -80
	
	stream = audio_dict[audio]
	play()
	tween.tween_property(self, "volume_db", new_volume, tween_length)


func set_tween_length(audio):
	if audio == "bike":
		return 0
	if audio == "traffic":
		return 0.25
	
	return 1


func set_volume(audio):
	if audio == "alarm clock":
		return -20
	if audio == "footsteps 1":
		return -10
	if audio == "bus":
		return -6
	if audio == "traffic":
		return -25
	if audio == "footsteps 2":
		return -5
	if audio == "ambience":
		return -10
	if audio == "bike":
		return 0
		
	return 8

func stop_sfx() -> void:
	var tween = create_tween()
	tween.tween_property(self, "volume_db", -80, 3)
	
	await tween.finished
	stop()
