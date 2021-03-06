extends Control

onready var done_button = $SettingsBox/DoneButton/Button

onready var dialogue_volume = $SettingsBox/VolumeDialogue/HSlider
onready var music_volume = $SettingsBox/VolumeMusic/HSlider
onready var sfx_volume = $SettingsBox/VolumeSFX/HSlider
onready var ping_volume = $SettingsBox/Pinger/HSlider
onready var jeff_volume = $SettingsBox/VolumeJeff/HSlider
onready var pinger = $SettingsBox/Pinger/CheckBox
onready var subtitles = $SettingsBox/Subtitles/CheckBox

onready var bus_dialogue = AudioServer.get_bus_index("Dialogue")
onready var bus_music = AudioServer.get_bus_index("Music")
onready var bus_sfx = AudioServer.get_bus_index("SFX")
onready var bus_ping = AudioServer.get_bus_index("Ping")
onready var bus_jeff = AudioServer.get_bus_index("Jeff")

signal game_time
signal keybinds_time

func _ready():
	dialogue_volume.value = db2linear(AudioServer.get_bus_volume_db(bus_dialogue))
	music_volume.value = db2linear(AudioServer.get_bus_volume_db(bus_music))
	sfx_volume.value = db2linear(AudioServer.get_bus_volume_db(bus_sfx))
	ping_volume.value = db2linear(AudioServer.get_bus_volume_db(bus_ping))
	jeff_volume.value = db2linear(AudioServer.get_bus_volume_db(bus_jeff))

#apply settings and return to the game
func _on_Button_pressed():
	emit_signal("game_time")

#volume change connections
func _on_DialogueSlider_value_changed(value):
	AudioServer.set_bus_volume_db(bus_dialogue, linear2db(dialogue_volume.value))
func _on_MusicSlider_value_changed(value):
	AudioServer.set_bus_volume_db(bus_music, linear2db(music_volume.value))
func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(bus_sfx, linear2db(sfx_volume.value))
func _on_PingSlider_value_changed(value):
	AudioServer.set_bus_volume_db(bus_ping, linear2db(ping_volume.value))
func _on_JeffSlider_value_changed(value):
	AudioServer.set_bus_volume_db(bus_jeff, linear2db(jeff_volume.value))

#show pinger volume when checked
func _on_PingerBox_toggled(button_pressed):
	if ping_volume.editable:
		ping_volume.hide()
		ping_volume.editable = false
	elif !ping_volume.editable:
		ping_volume.show()
		ping_volume.editable = true

#flip paper to do rebinds
func _on_Rebinds_pressed():
	emit_signal("keybinds_time")
