extends Control

onready var done_button = $SettingsBox/DoneButton/Button

onready var global_volume = $SettingsBox/Volume/HSlider
onready var dialogue_volume = $SettingsBox/VolumeDialogue/HSlider
onready var music_volume = $SettingsBox/VolumeMusic/HSlider
onready var sfx_volume = $SettingsBox/VolumeSFX/HSlider
onready var pinger = $SettingsBox/Pinger/CheckBox
onready var subtitles = $SettingsBox/Subtitles/CheckBox
onready var dynamic_text = $SettingsBox/DynamicText/CheckBox
onready var bg_video = $SettingsBox/BGVideo/CheckBox

signal game_time

#apply settings and return to the game
func _on_Button_pressed():
	emit_signal("game_time")
