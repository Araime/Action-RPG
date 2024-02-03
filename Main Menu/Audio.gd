extends Control

export var sfx_audio_name: String = ""
export var mus_audio_name: String = ""

onready var mus_player = $HBoxContainer/Music
onready var sfx_player = $HBoxContainer/SFX
onready var mus_slider = $HBoxContainer/Slider/Music
onready var sfx_slider = $HBoxContainer/Slider/SoundFX

func _on_Music_value_changed(value):
	var audio_index = AudioServer.get_bus_index(mus_audio_name)
	if value > mus_slider.min_value:
		var volume_db = linear2db(value)
		AudioServer.set_bus_mute(audio_index, false)
		AudioServer.set_bus_volume_db(audio_index, volume_db)
	else:
		AudioServer.set_bus_mute(audio_index, true)
	mus_player.play()

func _on_Sound_FX_value_changed(value):
	var audio_index = AudioServer.get_bus_index(sfx_audio_name)
	if value > sfx_slider.min_value:
		var volume_db = linear2db(value)
		AudioServer.set_bus_mute(audio_index, false)
		AudioServer.set_bus_volume_db(audio_index, volume_db)
	else:
		AudioServer.set_bus_mute(audio_index, true)
	sfx_player.play()
