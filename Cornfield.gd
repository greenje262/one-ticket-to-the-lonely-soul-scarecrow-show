extends Spatial

onready var player = $Player
onready var weather = $Atmosphere
onready var fog = $Fog
onready var weather_tween = $Atmosphere/Tween
onready var node001 = $Nodes/Node01
onready var node002 = $Nodes/Node02
onready var node003 = $Nodes/Node03
onready var node004 = $Nodes/Node04
onready var node005 = $Nodes/Node05
onready var node006 = $Nodes/Node06
onready var node007 = $Nodes/Node07
onready var node008 = $Nodes/Node08
onready var node009 = $Nodes/Node09
onready var node010 = $Nodes/Node10
onready var node011 = $Nodes/Node11
onready var node012 = $Nodes/Node12
onready var node013 = $Nodes/Node13
onready var node014 = $Nodes/Node14
onready var node015 = $Nodes/Node15
onready var node016 = $Nodes/Node16
onready var node017 = $Nodes/Node17
onready var node018 = $Nodes/Node18
onready var node019 = $Nodes/Node19
onready var node020 = $Nodes/Node20
onready var node021 = $Nodes/Node21
onready var node022 = $Nodes/Node22
onready var node023 = $Nodes/Node23
onready var node024 = $Nodes/Node24
onready var node025 = $Nodes/Node25
onready var node026 = $Nodes/Node26
onready var node027 = $Nodes/Node27
onready var node028 = $Nodes/Node28
onready var node029 = $Nodes/Node29
onready var node030 = $Nodes/Node30
onready var node031 = $Nodes/Node31
onready var node032 = $Nodes/Node32
onready var node033 = $Nodes/Node33
onready var node034 = $Nodes/Node34
onready var node035 = $Nodes/Node35
onready var node036 = $Nodes/Node36
onready var node037 = $Nodes/Node37
onready var node038 = $Nodes/Node38
onready var node039 = $Nodes/Node39
onready var node040 = $Nodes/Node40
onready var node041 = $Nodes/Node41
onready var node042 = $Nodes/Node42
onready var node043 = $Nodes/Node43
onready var node044 = $Nodes/Node44
onready var node045 = $Nodes/Node45
onready var node046 = $Nodes/Node46
onready var node047 = $Nodes/Node47
onready var node048 = $Nodes/Node48
onready var node049 = $Nodes/Node49
onready var node050 = $Nodes/Node50
onready var node051 = $Nodes/Node51
onready var node052 = $Nodes/Node52
onready var node053 = $Nodes/Node53
onready var node054 = $Nodes/Node54
onready var node055 = $Nodes/Node55
onready var node056 = $Nodes/Node56
onready var node057 = $Nodes/Node57
onready var node058 = $Nodes/Node58
onready var node059 = $Nodes/Node59
onready var node060 = $Nodes/Node60
onready var node061 = $Nodes/Node61
onready var node062 = $Nodes/Node62
onready var node063 = $Nodes/Node63
onready var node064 = $Nodes/Node64
onready var node065 = $Nodes/Node65
onready var node066 = $Nodes/Node66
onready var node067 = $Nodes/Node67
onready var node068 = $Nodes/Node68
onready var node069 = $Nodes/Node69
onready var node070 = $Nodes/Node70
onready var node071 = $Nodes/Node71
onready var node072 = $Nodes/Node72
onready var node073 = $Nodes/Node73
onready var node074 = $Nodes/Node74
onready var node075 = $Nodes/Node75
onready var node076 = $Nodes/Node76
onready var node077 = $Nodes/Node77
onready var node078 = $Nodes/Node78
onready var node079 = $Nodes/Node79
onready var node080 = $Nodes/Node80
onready var node081 = $Nodes/Node81
onready var node082 = $Nodes/Node82
onready var node083 = $Nodes/Node83
onready var node084 = $Nodes/Node84
onready var node085 = $Nodes/Node85
onready var node086 = $Nodes/Node86
onready var node087 = $Nodes/Node87
onready var node088 = $Nodes/Node88
onready var node089 = $Nodes/Node89
onready var node090 = $Nodes/Node90
onready var node091 = $Nodes/Node91
onready var node092 = $Nodes/Node92
onready var node093 = $Nodes/Node93
onready var node094 = $Nodes/Node94
onready var node095 = $Nodes/Node95
onready var node096 = $Nodes/Node96
onready var node097 = $Nodes/Node97
onready var node098 = $Nodes/Node98
onready var node099 = $Nodes/Node99
onready var node100 = $Nodes/Node100
onready var node101 = $Nodes/Node101
onready var node102 = $Nodes/Node102
onready var node103 = $Nodes/Node103
onready var node104 = $Nodes/Node104
onready var node105 = $Nodes/Node105
onready var node106 = $Nodes/Node106
onready var node107 = $Nodes/Node107
onready var node108 = $Nodes/Node108
onready var node109 = $Nodes/Node109
onready var node110 = $Nodes/Node110
onready var node111 = $Nodes/Node111
onready var node112 = $Nodes/Node112
onready var node113 = $Nodes/Node113
onready var node114 = $Nodes/Node114
onready var node115 = $Nodes/Node115
onready var node116 = $Nodes/Node116
onready var node117 = $Nodes/Node117
onready var node118 = $Nodes/Node118
onready var node119 = $Nodes/Node119
onready var node120 = $Nodes/Node120
onready var node121 = $Nodes/Node121

signal the_end

#connect to the player, initialize position
func _ready():
	player.connect("node_update", self, "check_node")
	check_node()

#quit the game
func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

#find current position and return possible path choices
func check_node():
	match player.translation:
		node001.translation:
			player.node_match = {
				"N": node002.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node002.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node001.translation, "speedS": 1.5,
				"E": node003.translation, "speedE": 0.75
				}
		node003.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node002.translation, "speedW": 0.75,
				"S": node004.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node004.translation:
			player.node_match = {
				"N": node003.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node005.translation, "speedE": 0.75
				}
		node005.translation:
			player.node_match = {
				"N": node006.translation, "speedN": 0.75,
				"W": node004.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": node010.translation, "speedE": 1.5
				}
		node006.translation:
			player.node_match = {
				"N": node018.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node005.translation, "speedS": 0.75,
				"E": node007.translation, "speedE": 0.75
				}
		node007.translation:
			player.node_match = {
				"N": node017.translation, "speedN": 1.125,
				"W": node006.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": node008.translation, "speedE": 0.75
				}
		node008.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node007.translation, "speedW": 0.75,
				"S": node009.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node009.translation:
			player.node_match = {
				"N": node008.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node010.translation, "speedS": 0.375,
				"E": node011.translation, "speedE": 0.75
				}
		node010.translation:
			player.node_match = {
				"N": node009.translation, "speedN": 0.375,
				"W": node005.translation, "speedW": 1.5,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node011.translation:
			player.node_match = {
				"N": node012.translation, "speedN": 1.125,
				"W": node009.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node012.translation:
			player.node_match = {
				"N": node013.translation, "speedN": 1.875,
				"W": node014.translation, "speedW": 0.75,
				"S": node011.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node013.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node026.translation, "speedW": 1.125,
				"S": node012.translation, "speedS": 1.875,
				"E": null, "speedE": 0
				}
		node014.translation:
			player.node_match = {
				"N": node015.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node012.translation, "speedE": 0.75
				}
		node015.translation:
			player.node_match = {
				"N": node016.translation, "speedN": 0.75,
				"W": node017.translation, "speedW": 0.75,
				"S": node014.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node016.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node022.translation, "speedW": 1.125,
				"S": node015.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node017.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node007.translation, "speedS": 1.125,
				"E": node015.translation, "speedE": 0.75
				}
		node018.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node019.translation, "speedW": 1.125,
				"S": node006.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node019.translation:
			player.node_match = {
				"N": node020.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node018.translation, "speedE": 1.125
				}
		node020.translation:
			player.node_match = {
				"N": node023.translation, "speedN": 0.75,
				"W": node021.translation, "speedW": 0.75,
				"S": node019.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node021.translation:
			player.node_match = {
				"N": node027.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node020.translation, "speedE": 0.75
				}
		node022.translation:
			player.node_match = {
				"N": node025.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node016.translation, "speedE": 1.125
				}
		node023.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node020.translation, "speedS": 0.75,
				"E": node024.translation, "speedE": 1.125
				}
		node024.translation:
			player.node_match = {
				"N": node029.translation, "speedN": 0.75,
				"W": node023.translation, "speedW": 1.125,
				"S": null, "speedS": 0,
				"E": node025.translation, "speedE": 0.375
				}
		node025.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node024.translation, "speedW": 0.375,
				"S": node022.translation, "speedS": 0.75,
				"E": node026.translation, "speedE": 0.75
				}
		node026.translation:
			player.node_match = {
				"N": node031.translation, "speedN": 1.125,
				"W": node025.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": node013.translation, "speedE": 1.125
				}
		node027.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node021.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node028.translation:
			player.node_match = {
				"N": node035.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node029.translation, "speedE": 0.75
				}
		node029.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node028.translation, "speedW": 0.75,
				"S": node024.translation, "speedS": 0.75,
				"E": node030.translation, "speedE": 0.375
				}
		node030.translation:
			player.node_match = {
				"N": node033.translation, "speedN": 0.75,
				"W": node029.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node031.translation:
			player.node_match = {
				"N": node037.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node026.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node032.translation:
			player.node_match = {
				"N": node044.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node033.translation, "speedE": 0.375
				}
		node033.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node032.translation, "speedW": 0.375,
				"S": node030.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node034.translation:
			player.node_match = {
				"N": node041.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node035.translation, "speedE": 1.125
				}
		node035.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node034.translation, "speedW": 1.125,
				"S": node028.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node036.translation:
			player.node_match = {
				"N": node045.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node037.translation, "speedE": 0.375
				}
		node037.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node036.translation, "speedW": 0.375,
				"S": node031.translation, "speedS": 1.125,
				"E": node038.translation, "speedE": 0.375
				}
		node038.translation:
			player.node_match = {
				"N": node047.translation, "speedN": 1.125,
				"W": node037.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": node039.translation, "speedE": 0.75
				}
		node039.translation:
			player.node_match = {
				"N": node048.translation, "speedN": 1.125,
				"W": node038.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node040.translation:
			player.node_match = {
				"N": node046.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node041.translation, "speedE": 0.375
				}
		node041.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node040.translation, "speedW": 0.375,
				"S": node034.translation, "speedS": 0.75,
				"E": node042.translation, "speedE": 1.125
				}
		node042.translation:
			player.node_match = {
				"N": node043.translation, "speedN": 0.375,
				"W": node041.translation, "speedW": 1.125,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node043.translation:
			player.node_match = {
				"N": node052.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": node042.translation, "speedS": 0.375,
				"E": node044.translation, "speedE": 0.75
				}
		node044.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node043.translation, "speedW": 0.75,
				"S": node032.translation, "speedS": 1.5,
				"E": node045.translation, "speedE": 0.75
				}
		node045.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node044.translation, "speedW": 0.75,
				"S": node036.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node046.translation:
			player.node_match = {
				"N": node051.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node040.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node047.translation:
			player.node_match = {
				"N": node050.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": node038.translation, "speedS": 1.125,
				"E": node048.translation, "speedE": 0.75
				}
		node048.translation:
			player.node_match = {
				"N": node054.translation, "speedN": 1.5,
				"W": node047.translation, "speedW": 0.75,
				"S": node039.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node049.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node050.translation, "speedE": 1.125
				}
		node050.translation:
			player.node_match = {
				"N": node053.translation, "speedN": 0.75,
				"W": node049.translation, "speedW": 1.125,
				"S": node047.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node051.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node078.translation, "speedW": 0.75,
				"S": node046.translation, "speedS": 1.125,
				"E": node052.translation, "speedE": 1.5
				}
		node052.translation:
			player.node_match = {
				"N": node055.translation, "speedN": 0.75,
				"W": node051.translation, "speedW": 1.5,
				"S": node043.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node053.translation:
			player.node_match = {
				"N": node057.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node050.translation, "speedS": 0.75,
				"E": node054.translation, "speedE": 0.75
				}
		node054.translation:
			player.node_match = {
				"N": node061.translation, "speedN": 1.125,
				"W": node053.translation, "speedW": 0.75,
				"S": node048.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node055.translation:
			player.node_match = {
				"N": node065.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": node052.translation, "speedS": 0.75,
				"E": node056.translation, "speedE": 1.125
				}
		node056.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node055.translation, "speedW": 1.125,
				"S": null, "speedS": 0,
				"E": node057.translation, "speedE": 1.125
				}
		node057.translation:
			player.node_match = {
				"N": node059.translation, "speedN": 0.75,
				"W": node056.translation, "speedW": 1.125,
				"S": node053.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node058.translation:
			player.node_match = {
				"N": node064.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node059.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node057.translation, "speedS": 0.75,
				"E": node060.translation, "speedE": 0.375
				}
		node060.translation:
			player.node_match = {
				"N": node067.translation, "speedN": 0.75,
				"W": node059.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": node061.translation, "speedE": 0.375
				}
		node061.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node060.translation, "speedW": 0.375,
				"S": node054.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node062.translation:
			player.node_match = {
				"N": node063.translation, "speedN": 0.375,
				"W": node070.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node063.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node062.translation, "speedS": 0.375,
				"E": node064.translation, "speedE": 0.75
				}
		node064.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node063.translation, "speedW": 0.75,
				"S": node058.translation, "speedS": 1.125,
				"E": node065.translation, "speedE": 1.125
				}
		node065.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node064.translation, "speedW": 1.125,
				"S": node066.translation, "speedS": 1.125,
				"E": node055.translation, "speedE": 1.5
				}
		node066.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node065.translation, "speedW": 1.125,
				"S": null, "speedS": 0,
				"E": node067.translation, "speedE": 1.5
				}
		node067.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node066.translation, "speedW": 1.5,
				"S": node060.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node068.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node073.translation, "speedS": 1.125,
				"E": node069.translation, "speedE": 0.75
				}
		node069.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node068.translation, "speedW": 0.75,
				"S": node074.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node070.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node072.translation, "speedS": 0.375,
				"E": node062.translation, "speedE": 0.75
				}
		node071.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node075.translation, "speedS": 0.75,
				"E": node072.translation, "speedE": 0.375
				}
		node072.translation:
			player.node_match = {
				"N": node070.translation, "speedN": 0.375,
				"W": node071.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node073.translation:
			player.node_match = {
				"N": node068.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node077.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node074.translation:
			player.node_match = {
				"N": node069.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node075.translation, "speedE": 1.125
				}
		node075.translation:
			player.node_match = {
				"N": node071.translation, "speedN": 0.75,
				"W": node074.translation, "speedW": 1.125,
				"S": node079.translation, "speedS": 1.5,
				"E": node076.translation, "speedE": 0.75
				}
		node076.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node075.translation, "speedW": 0.75,
				"S": node078.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node077.translation:
			player.node_match = {
				"N": node073.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node081.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node078.translation:
			player.node_match = {
				"N": node076.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": node083.translation, "speedS": 1.125,
				"E": node051.translation, "speedE": 0.75
				}
		node079.translation:
			player.node_match = {
				"N": node075.translation, "speedN": 1.5,
				"W": node080.translation, "speedW": 1.125,
				"S": node082.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node080.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node081.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": node079.translation, "speedE": 1.125
				}
		node081.translation:
			player.node_match = {
				"N": node077.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": node084.translation, "speedS": 0.75,
				"E": node080.translation, "speedE": 0.75
				}
		node082.translation:
			player.node_match = {
				"N": node079.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node083.translation, "speedE": 0.75
				}
		node083.translation:
			player.node_match = {
				"N": node078.translation, "speedN": 1.125,
				"W": node082.translation, "speedW": 0.75,
				"S": node088.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node084.translation:
			player.node_match = {
				"N": node081.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": node089.translation, "speedS": 1.5,
				"E": node085.translation, "speedE": 0.75
				}
		node085.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node084.translation, "speedW": 0.75,
				"S": node086.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node086.translation:
			player.node_match = {
				"N": node085.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node087.translation, "speedE": 0.75
				}
		node087.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node086.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node088.translation:
			player.node_match = {
				"N": node083.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": node093.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node089.translation:
			player.node_match = {
				"N": node084.translation, "speedN": 1.5,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node090.translation, "speedE": 0.75
				}
		node090.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node089.translation, "speedW": 0.75,
				"S": node091.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node091.translation:
			player.node_match = {
				"N": node090.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node094.translation, "speedS": 0.375,
				"E": node092.translation, "speedE": 1.125
				}
		node092.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node091.translation, "speedW": 1.125,
				"S": node096.translation, "speedS": 0.75,
				"E": node093.translation, "speedE": 0.75
				}
		node093.translation:
			player.node_match = {
				"N": node088.translation, "speedN": 1.125,
				"W": node092.translation, "speedW": 0.75,
				"S": node101.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node094.translation:
			player.node_match = {
				"N": node091.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node097.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node095.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node098.translation, "speedS": 0.375,
				"E": node096.translation, "speedE": 0.375
				}
		node096.translation:
			player.node_match = {
				"N": node092.translation, "speedN": 0.75,
				"W": node095.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node097.translation:
			player.node_match = {
				"N": node094.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node098.translation, "speedE": 0.75
				}
		node098.translation:
			player.node_match = {
				"N": node095.translation, "speedN": 0.375,
				"W": node097.translation, "speedW": 0.75,
				"S": node099.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node099.translation:
			player.node_match = {
				"N": node098.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node100.translation, "speedE": 0.75
				}
		node100.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node099.translation, "speedW": 0.75,
				"S": node105.translation, "speedS": 0.75,
				"E": node101.translation, "speedE": 0.375
				}
		node101.translation:
			player.node_match = {
				"N": node093.translation, "speedN": 1.5,
				"W": node100.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node102.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node108.translation, "speedS": 1.125,
				"E": node103.translation, "speedE": 0.75
				}
		node103.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node102.translation, "speedW": 0.75,
				"S": node104.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node104.translation:
			player.node_match = {
				"N": node103.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node105.translation, "speedE": 1.5
				}
		node105.translation:
			player.node_match = {
				"N": node100.translation, "speedN": 0.75,
				"W": node104.translation, "speedW": 1.5,
				"S": node106.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node106.translation:
			player.node_match = {
				"N": node105.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node107.translation, "speedE": 0.375
				}
		node107.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node106.translation, "speedW": 0.375,
				"S": node112.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node108.translation:
			player.node_match = {
				"N": node102.translation, "speedN": 1.125,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node109.translation, "speedE": 0.75
				}
		node109.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node108.translation, "speedW": 0.75,
				"S": node110.translation, "speedS": 0.375,
				"E": null, "speedE": 0
				}
		node110.translation:
			player.node_match = {
				"N": node109.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node114.translation, "speedS": 0.375,
				"E": node111.translation, "speedE": 1.125
				}
		node111.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node110.translation, "speedW": 1.125,
				"S": node119.translation, "speedS": 1.125,
				"E": null, "speedE": 0
				}
		node112.translation:
			player.node_match = {
				"N": node107.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node113.translation, "speedE": 0.375
				}
		node113.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node112.translation, "speedW": 0.375,
				"S": node116.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node114.translation:
			player.node_match = {
				"N": node110.translation, "speedN": 0.375,
				"W": null, "speedW": 0,
				"S": node118.translation, "speedS": 0.75,
				"E": null, "speedE": 0
				}
		node115.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": node120.translation, "speedS": 0.375,
				"E": node116.translation, "speedE": 0.375
				}
		node116.translation:
			player.node_match = {
				"N": node113.translation, "speedN": 0.75,
				"W": node115.translation, "speedW": 0.375,
				"S": null, "speedS": 0,
				"E": node117.translation, "speedE": 0.375
				}
		node117.translation:
			player.node_match = {
				"N": null, "speedN": 0,
				"W": node116.translation, "speedW": 0.375,
				"S": node121.translation, "speedS": 1.5,
				"E": null, "speedE": 0
				}
		node118.translation:
			player.node_match = {
				"N": node114.translation, "speedN": 0.75,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": node119.translation, "speedE": 1.125
				}
		node119.translation:
			player.node_match = {
				"N": node111.translation, "speedN": 1.125,
				"W": node118.translation, "speedW": 1.125,
				"S": null, "speedS": 0,
				"E": node120.translation, "speedE": 0.75
				}
		node120.translation:
			player.node_match = {
				"N": node115.translation, "speedN": 0.375,
				"W": node119.translation, "speedW": 0.75,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
		node121.translation:
			emit_signal("the_end")
			player.node_match = {
				"N": null, "speedN": 0,
				"W": null, "speedW": 0,
				"S": null, "speedS": 0,
				"E": null, "speedE": 0
				}
