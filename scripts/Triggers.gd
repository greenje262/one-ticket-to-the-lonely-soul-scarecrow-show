extends Node

onready var rng = RandomNumberGenerator.new()

onready var player = get_node("/root/Cornfield/Player")
onready var jeffer = get_node("/root/Cornfield/JeffVoice")

onready var trigger01 = get_node("/root/Cornfield/Triggers/Trigger01")
onready var trigger02 = get_node("/root/Cornfield/Triggers/Trigger02")
onready var trigger03 = get_node("/root/Cornfield/Triggers/Trigger03")
onready var trigger04 = get_node("/root/Cornfield/Triggers/Trigger04")
onready var trigger05 = get_node("/root/Cornfield/Triggers/Trigger05")
onready var trigger06 = get_node("/root/Cornfield/Triggers/Trigger06")
onready var trigger07 = get_node("/root/Cornfield/Triggers/Trigger07")
onready var trigger08 = get_node("/root/Cornfield/Triggers/Trigger08")
onready var trigger09 = get_node("/root/Cornfield/Triggers/Trigger09")
onready var trigger10 = get_node("/root/Cornfield/Triggers/Trigger10")
onready var trigger11 = get_node("/root/Cornfield/Triggers/Trigger11")
onready var trigger12 = get_node("/root/Cornfield/Triggers/Trigger12")
onready var trigger13 = get_node("/root/Cornfield/Triggers/Trigger13")
onready var trigger14 = get_node("/root/Cornfield/Triggers/Trigger14")
onready var trigger15 = get_node("/root/Cornfield/Triggers/Trigger15")
onready var trigger16 = get_node("/root/Cornfield/Triggers/Trigger16")
onready var trigger17 = get_node("/root/Cornfield/Triggers/Trigger17")
onready var trigger18 = get_node("/root/Cornfield/Triggers/Trigger18")
onready var trigger19 = get_node("/root/Cornfield/Triggers/Trigger19")
onready var trigger20 = get_node("/root/Cornfield/Triggers/Trigger20")
onready var trigger21 = get_node("/root/Cornfield/Triggers/Trigger21")

var pos01; var pos02; var pos03; var pos04; var pos05; var pos06; var pos07
var pos08; var pos09; var pos10; var pos11; var pos12; var pos13; var pos14
var pos15; var pos16; var pos17; var pos18; var pos19; var pos20; var pos21

var chambered = false

#sound file strings go in these
var vo_array01 = []
var vo_array02 = []

func _ready():
	pos01 = trigger01.translation; pos02 = trigger02.translation
	pos03 = trigger03.translation; pos04 = trigger04.translation
	pos05 = trigger05.translation; pos06 = trigger06.translation
	pos07 = trigger07.translation; pos08 = trigger08.translation
	pos09 = trigger09.translation; pos10 = trigger10.translation
	pos11 = trigger11.translation; pos12 = trigger12.translation
	pos13 = trigger13.translation; pos14 = trigger14.translation
	pos15 = trigger15.translation; pos16 = trigger16.translation
	pos17 = trigger17.translation; pos18 = trigger18.translation
	pos19 = trigger19.translation; pos20 = trigger20.translation
	pos21 = trigger21.translation

#choose possible fragments based on player location, and remove dialogue trigger
func check_trigger():
	chambered = true
	match player.translation:
		pos01:
			pick_from(vo_array01)
			trigger01.queue_free()
		pos02:
			pick_from(vo_array01)
			trigger02.queue_free()
		pos03:
			pick_from(vo_array01)
			trigger03.queue_free()
		pos04:
			pick_from(vo_array01)
			trigger04.queue_free()
		pos05:
			pick_from(vo_array01)
			trigger05.queue_free()
		pos06:
			pick_from(vo_array01)
			trigger06.queue_free()
		pos07:
			pick_from(vo_array01)
			trigger07.queue_free()
		pos08:
			pick_from(vo_array01)
			trigger08.queue_free()
		pos09:
			pick_from(vo_array01)
			trigger09.queue_free()
		pos10:
			pick_from(vo_array01)
			trigger10.queue_free()
		pos11:
			pick_from(vo_array01)
			trigger11.queue_free()
		pos12:
			pick_from(vo_array01)
			trigger12.queue_free()
		pos13:
			pick_from(vo_array01)
			trigger13.queue_free()
		pos14:
			pick_from(vo_array01)
			trigger14.queue_free()
		pos15:
			pick_from(vo_array01)
			trigger15.queue_free()
		pos16:
			pick_from(vo_array01)
			trigger16.queue_free()
		pos17:
			pick_from(vo_array01)
			trigger17.queue_free()
		pos18:
			pick_from(vo_array01)
			trigger18.queue_free()
		pos19:
			pick_from(vo_array01)
			trigger19.queue_free()
		pos20:
			pick_from(vo_array01)
			trigger20.queue_free()
		pos21:
			pick_from(vo_array01)
			trigger21.queue_free()

#choose a random fragment from the array and store it to play on advancing
func pick_from(array):
	rng.randomize()
	#var track = rng.randi_range(0, array.size() - 1)
	#var file = load("res://audio/" + str(array[track]))
	var file = load("res://audio/test-audio.mp3")
	jeffer.stream = file
	#array.remove(track)

#play the fragment, and set chambered to false to prepare for next trigger
func play_fragment():
	#jeffer.play()
	yield(jeffer, "finished")
	chambered = false
