extends Control

onready var menu = $MarginContainer/Menu/VBoxContainer
onready var options = $Options
onready var video = $Video
onready var audio = $Audio

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle()

func toggle():
	visible = !visible
	get_tree().paused = visible

func _on_Play_pressed():
	toggle()
	get_tree().change_scene("res://World.tscn")

func _on_Options_pressed():
	show_and_hide(options, menu)
	
func show_and_hide(first, second):
	first.show()
	second.hide()

func _on_Quit_pressed():
	get_tree().quit()

func _on_Video_pressed():
	show_and_hide(video, options)

func _on_Audio_pressed():
	show_and_hide(audio, options)

func _on_BackFromOptions_pressed():
	show_and_hide(menu, options)

func _on_BackFromVideo_pressed():
	show_and_hide(options, video)

func _on_BackFromAudio_pressed():
	show_and_hide(options, audio)
