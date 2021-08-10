extends Node

var settings

var show_pinger = false
var show_subtitles = true
var show_dynamic_text = true
var show_bg_video = true

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
	
	if settings.dynamic_text.pressed:
		show_dynamic_text = true
	elif !settings.dynamic_text.pressed:
		show_dynamic_text = false
	
	if settings.bg_video.pressed:
		show_bg_video = true
	elif !settings.bg_video.pressed:
		show_bg_video = false
