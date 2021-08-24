extends Node

const TEXT = preload("res://scenes/Words.tscn")

onready var talking = false
onready var choice = false
onready var words = TEXT.instance()

var holder
var current_dialogue
var page
var player
var speaker
var timer
var spelled

signal done_spelling

#call nodes and connect the timer
func _ready():
	player = get_node("/root/Cornfield/Player/WordBox")
	speaker = get_node("/root/Cornfield/Player/DialoguePlayer")
	timer = get_node("/root/Cornfield/Player/Timer")
	
	timer.connect("timeout", self, "_on_Timer_timeout")

#setup dialogue 
func dialogue_start(scrow):
	talking = true
	match scrow:
		"Area01":
			holder = DialogueVault.scrow01
		"Area02":
			holder = DialogueVault.scrow02
		"Area03":
			holder = DialogueVault.scrow03
		"Area04":
			holder = DialogueVault.scrow04
		"Area05":
			holder = DialogueVault.scrow05
		"Area06":
			holder = DialogueVault.scrow06
		"Area07":
			holder = DialogueVault.scrow07
		"Area08":
			holder = DialogueVault.scrow08
		"Area09":
			holder = DialogueVault.scrow09
		"Area10":
			holder = DialogueVault.scrow10
	if holder.finished:
		pass
	elif !holder.finished:
		current_dialogue = holder.dialogue
		page = 0
		dialogue_advance()

#what happens when you press r
func _input(event):
	if Input.is_action_just_pressed("talk") && talking:
		if !holder.finished:
			if GlobalSettings.show_subtitles:
				if words.get_visible_characters() > words.get_total_character_count():
					emit_signal("done_spelling")
					if !choice:
						if page < current_dialogue.size() - 1:
							page += 1
							dialogue_advance()
						elif page == current_dialogue.size() - 1:
							holder.finished = true
							dialogue_end()
				else:
					words.set_visible_characters(words.get_total_character_count())
			else:
				if !choice:
						if page < current_dialogue.size() - 1:
							page += 1
							dialogue_advance()
						elif page == current_dialogue.size() - 1:
							holder.finished = true
							dialogue_end()
	elif choice:
		if Input.is_action_just_pressed("yes"):
			current_dialogue = holder.dialogue_yes
			page = 0
			dialogue_advance()
			choice = false
		elif Input.is_action_just_pressed("no"):
			current_dialogue = holder.dialogue_no
			page = 0
			dialogue_advance()
			choice = false

#letter by letter typing
func _on_Timer_timeout():
	if talking && !holder.finished:
		words.set_visible_characters(words.get_visible_characters() + 1)

#step through dialogue
func dialogue_advance():
	if GlobalSettings.show_subtitles:
		player.add_child(words)
		
		words.rect_scale = Vector2(1, 1)
		words.set_visible_characters(0)
		words.rect_size = Vector2(current_dialogue[page].x_size, current_dialogue[page].y_size)
		words.rect_position = Vector2(current_dialogue[page].x_pos, current_dialogue[page].y_pos)
		words.bbcode_text = current_dialogue[page].text
	
	if speaker.playing:
		speaker.stop()
	
	#speaker.stream = current_dialogue[page].clip
	speaker.play(0)
	
	#text manipulation signals
	#these signals persist from line to line...maybe it would be a good idea to have a reset signal?
	if current_dialogue[page].signal != null:
		for i in current_dialogue[page].signal.size():
			if current_dialogue[page].signal[i - 1] == "choice":
				choice = true
			
			if GlobalSettings.show_subtitles:
				match current_dialogue[page].signal[i - 1]:
					"redden":
						words.modulate = Color(1, 0, 0, 1)
					"whiten":
						words.modulate = Color(1, 1, 1, 1)
					"smallen":
						words.rect_scale = Vector2(0.5, 0.5)

#halt and reset dialogue state on room leave
func dialogue_end():
	talking = false
	yield(get_tree().create_timer(0.25), "timeout")
	player.remove_child(words)
	
	if speaker.playing:
		speaker.stop()
