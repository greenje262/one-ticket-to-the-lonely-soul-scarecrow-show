extends Node

var settings

var show_pinger = false
var show_subtitles = true

#initialize variables
func _ready():
	settings = get_node("/root/Cornfield/Player/SettingsPage/ViewportContainer/ViewportSettings/SettingsSurvey")

#set setting booleans
func _process(delta):
	if settings.pinger.pressed:
		show_pinger = true
	elif !settings.pinger.pressed:
		show_pinger = false
	
	if settings.subtitles.pressed:
		show_subtitles = true
	elif !settings.subtitles.pressed:
		show_subtitles = false
