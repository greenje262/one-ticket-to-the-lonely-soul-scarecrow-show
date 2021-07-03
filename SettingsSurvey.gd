extends Control

signal game_time

func _on_Button_pressed():
	print("presssssss")
	emit_signal("game_time")
