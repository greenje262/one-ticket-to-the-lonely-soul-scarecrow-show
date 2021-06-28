extends Spatial

onready var tween = $MoveTween
onready var tween2 = $OtherTween
onready var pinger = $PingPlayer
onready var ray = $RayCast

onready var ind_u = $UIndicator
onready var ind_l = $LIndicator
onready var ind_d = $DIndicator
onready var ind_r = $RIndicator

onready var yesser = $WordBox/YesNoBox/Yes
onready var noer = $WordBox/YesNoBox/No

onready var title = $WordBox/TitleBox

var state = "title"
var counter = 1001
var dir
var coll
var stored_rot
var look_rot
var looking = false
var in_room = false
var node_match
var ind_empty = preload("res://indicator-empty.png")
var ind_full = preload("res://indicator-full.png")

signal node_update
signal game_start

func _ready():
	stored_rot = rotation_degrees

func _physics_process(delta):
	if state == "title" && !tween.is_active():
		if Input.is_action_just_pressed("ping"):
			tween.interpolate_property(self, "translation", translation, Vector3(0, 0, 17), 2, Tween.EASE_OUT)
			tween.start()
			tween2.interpolate_property(title, "modulate", Color(1, 1, 1, 1), Color(1, 1, 1, 0), 3.5, Tween.TRANS_EXPO)
			tween2.start()
	elif state == "settings" && !tween.is_active():
		yield(get_tree().create_timer(2), "timeout")
		pass
	elif state == "game":
		if !tween.is_active():
			if !looking:
				if Input.is_action_just_pressed("move_forward"):
					advance()
				if Input.is_action_just_pressed("ping"):
					ping()
				if Input.is_action_just_pressed("look") && in_room:
					looking = true
					tween.interpolate_property(self, "rotation_degrees", rotation_degrees, look_rot, 0.375, Tween.TRANS_LINEAR)
					tween.start()
			if !Dialogue.choice:
				if Input.is_action_just_pressed("turn_left"):
					if !looking:
						tween.interpolate_property(self, "rotation_degrees", rotation_degrees, Vector3(0, rotation_degrees.y + 90, 0), 0.375, Tween.TRANS_LINEAR)
						tween.start()
						counter = counter + 1
						yield(get_tree().create_timer(0.4), "timeout")
						normalize_rot()
					elif looking:
						tween.interpolate_property(self, "rotation_degrees", rotation_degrees, stored_rot, 0.375, Tween.TRANS_LINEAR)
						tween.start()
						looking = false
				if Input.is_action_just_pressed("turn_right"):
					if !looking:
						tween.interpolate_property(self, "rotation_degrees", rotation_degrees, Vector3(0, rotation_degrees.y - 90, 0), 0.375, Tween.TRANS_LINEAR)
						tween.start()
						counter = counter - 1
						yield(get_tree().create_timer(0.4), "timeout")
						normalize_rot()
					elif looking:
						tween.interpolate_property(self, "rotation_degrees", rotation_degrees, stored_rot, 0.375, Tween.TRANS_LINEAR)
						tween.start()
						looking = false
	
	match fmod(counter, 4):
		0.0:
			dir = "east"
		1.0:
			dir = "north"
		2.0:
			dir = "west"
		3.0:
			dir = "south"
	
	if ray.is_colliding():
		coll = ray.get_collider()
		in_room = true
		if coll != null:
			look_tweak(coll.translation - translation)
	else:
		in_room = false
	
	if Dialogue.choice:
		yield(Dialogue, "done_spelling")
		yesser.text = "Yes\n(" + InputMap.get_action_list("yes")[0].as_text() + ")"
		noer.text = "No\n(" + InputMap.get_action_list("no")[0].as_text() + ")"
		yesser.show()
		noer.show()
	elif !Dialogue.choice:
		yesser.hide()
		noer.hide()

#update look direction after every input
func look_tweak(looker):
	var player_vec
	var turn_vec
	var spin_rot
	
	turn_vec = looker.normalized()
	player_vec = Vector3(0, 0, -1)
	
	if looker.x >= 0:
		spin_rot = rad2deg(acos(turn_vec.dot(player_vec)))
	elif looker.x < 0:
		spin_rot = (rad2deg(acos(turn_vec.dot(player_vec)))) * -1
	
	match dir:
		"north":
			look_rot = rotation_degrees - Vector3(0, spin_rot, 0)
		"west":
			look_rot = rotation_degrees - Vector3(0, spin_rot, 0) - Vector3(0, 90, 0)
		"south":
			look_rot = rotation_degrees - Vector3(0, spin_rot, 0) + Vector3(0, 180, 0)
		"east":
			look_rot = rotation_degrees - Vector3(0, spin_rot, 0) + Vector3(0, 90, 0)

#move forward based on next node
func advance():
	match dir:
		"north":
			if node_match.N != null:
				tween.interpolate_property(self, "translation", translation, node_match.N, node_match.speedN, Tween.TRANS_LINEAR)
				tween.start()
		"west":
			if node_match.W != null:
				tween.interpolate_property(self, "translation", translation, node_match.W, node_match.speedW, Tween.TRANS_LINEAR)
				tween.start()
		"south":
			if node_match.S != null:
				tween.interpolate_property(self, "translation", translation, node_match.S, node_match.speedS, Tween.TRANS_LINEAR)
				tween.start()
		"east":
			if node_match.E != null:
				tween.interpolate_property(self, "translation", translation, node_match.E, node_match.speedE, Tween.TRANS_LINEAR)
				tween.start()

#tell players which directions are available
func ping():
	var loc_u
	var loc_l
	var loc_d
	var loc_r
	
	match dir:
		"east":
			loc_u = node_match.E
			loc_l = node_match.N
			loc_d = node_match.W
			loc_r = node_match.S
		"north":
			loc_u = node_match.N
			loc_l = node_match.W
			loc_d = node_match.S
			loc_r = node_match.E
		"west":
			loc_u = node_match.W
			loc_l = node_match.S
			loc_d = node_match.E
			loc_r = node_match.N
		"south":
			loc_u = node_match.S
			loc_l = node_match.E
			loc_d = node_match.N
			loc_r = node_match.W
	
	if loc_u == null:
		pass
	else:
		pinger.translation = translation + Vector3(0, 0, -10)
		pinger.pitch_scale = 1.25
		ping_play()
		
		ind_u.texture = ind_full
		yield(get_tree().create_timer(0.5), "timeout")
		ind_u.texture = ind_empty
	if loc_l == null:
		pass
	else:
		pinger.translation = translation + Vector3(-10, 0, 0)
		ping_play()
		
		ind_l.texture = ind_full
		yield(get_tree().create_timer(0.5), "timeout")
		ind_l.texture = ind_empty
	if loc_d == null:
		pass
	else:
		pinger.translation = translation + Vector3(0, 0, 10)
		pinger.pitch_scale = 0.75
		ping_play()
		
		ind_d.texture = ind_full
		yield(get_tree().create_timer(0.5), "timeout")
		ind_d.texture = ind_empty
	if loc_r == null:
		pass
	else:
		pinger.translation = translation + Vector3(10, 0, 0)
		ping_play()
		
		ind_r.texture = ind_full
		yield(get_tree().create_timer(0.5), "timeout")
		ind_r.texture = ind_empty

#avoid 360 no-scopes when using look feature
func normalize_rot():
	rotation_degrees.y = fmod(rotation_degrees.y, 360)
	if abs(rotation_degrees.y) == 360:
		rotation_degrees.y = 0
	stored_rot = rotation_degrees

#play pitched note depending on available travel directions
func ping_play():
	pinger.play(0)
	yield(get_tree().create_timer(pinger.stream.get_length()), "timeout")
	pinger.stop()
	pinger.pitch_scale = 1

#regularly update player position in cornfield
#connects to cornfield script
func _on_MoveTween_tween_all_completed():
	if state == "title":
		state = "settings"
		emit_signal("node_update")
	elif state == "game":
		emit_signal("node_update")
		
		if looking && !Dialogue.talking:
			Dialogue.dialogue_start(coll.name)
		
		if Dialogue.talking && !in_room:
			Dialogue.dialogue_end()
