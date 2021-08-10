extends Control

var can_change_key = false
var action_string
var left_actions = ["ui_up", "ui_left", "move_forward", "turn_left", "turn_right", "look", "yes", "settings"]
var right_actions = ["ui_down", "ui_right", "ui_accept", "quit", "ping", "talk", "no"]

signal flip_back

func _ready():
	set_keys()

func _input(event):
	if event is InputEventKey:
		if can_change_key:
			change_key(event)
			can_change_key = false

#set buttons to read current keybind
func set_keys():
	for i in left_actions:
		get_node("SettingsBox/LeftColumn/" + i + "/Button").set_pressed(false)
		if !InputMap.get_action_list(i).empty():
			get_node("SettingsBox/LeftColumn/" + i + "/Button").set_text(InputMap.get_action_list(i)[0].as_text())
		else:
			get_node("SettingsBox/LeftColumn/" + i + "/Button").set_text("Undefined")
	for i in right_actions:
		get_node("SettingsBox/RightColumn/" + i + "/Button").set_pressed(false)
		if !InputMap.get_action_list(i).empty():
			get_node("SettingsBox/RightColumn/" + i + "/Button").set_text(InputMap.get_action_list(i)[0].as_text())
		else:
			get_node("SettingsBox/RightColumn/" + i + "/Button").set_text("Undefined")

#feed button info to editable variable
func mark_button(string):
	can_change_key = true
	action_string = string
	
	for i in left_actions:
		if i != string:
			get_node("SettingsBox/LeftColumn/" + i + "/Button").set_pressed(false)
	for i in right_actions:
		if i != string:
			get_node("SettingsBox/RightColumn/" + i + "/Button").set_pressed(false)

#replace old key with new key
func change_key(new_key):
	#delete old key
	if !InputMap.get_action_list(action_string).empty():
		InputMap.action_erase_event(action_string, InputMap.get_action_list(action_string)[0])
	
	#check if key is used elsewhere
	for i in left_actions:
		if InputMap.action_has_event(i, new_key):
			InputMap.action_erase_event(i, new_key)
	for i in right_actions:
		if InputMap.action_has_event(i, new_key):
			InputMap.action_erase_event(i, new_key)
	
	#add new key
	InputMap.action_add_event(action_string, new_key)
	
	set_keys()

#button press functions
func _on_menu_up_pressed():
	mark_button("ui_up")
func _on_menu_left_pressed():
	mark_button("ui_left")
func _on_move_forward_pressed():
	mark_button("move_forward")
func _on_turn_left_pressed():
	mark_button("turn_left")
func _on_turn_right_pressed():
	mark_button("turn_right")
func _on_look_pressed():
	mark_button("look")
func _on_say_yes_pressed():
	mark_button("yes")
func _on_settings_pressed():
	mark_button("settings")
func _on_menu_down_pressed():
	mark_button("ui_down")
func _on_menu_right_pressed():
	mark_button("ui_right")
func _on_menu_confirm_pressed():
	mark_button("ui_accept")
func _on_quit_pressed():
	mark_button("quit")
func _on_ping_pressed():
	mark_button("ping")
func _on_talk_pressed():
	mark_button("talk")
func _on_say_no_pressed():
	mark_button("no")
func _on_Button_pressed():
	emit_signal("flip_back")
