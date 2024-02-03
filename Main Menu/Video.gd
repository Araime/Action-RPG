extends Control

func _on_Fullscreen_toggled(button_pressed):
	OS.window_fullscreen = button_pressed

func _on_Borderless_toggled(button_pressed):
	OS.window_borderless = button_pressed

func _on_VSync_toggled(button_pressed):
	OS.vsync_enabled = button_pressed
