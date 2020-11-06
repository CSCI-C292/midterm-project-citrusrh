extends ColorRect

onready var GameState = get_node("/root/GameState")

export var combinations := {
	"Fire": [{"Water": "Steam"}, {"Plant": "Coal"}, {"Sand":"Glass"}, {"Glass":"Bottle"}, {"Earth":"Metal"}],
	"Water": [{"Fire": "Steam"}, {"Air": "Storm"}, {"Earth": "Plant"}, {"Bottle": "BottleWater"}],
	"Earth": [{"Fire": "Metal"}, {"Air": "Sand"}, {"Coal": "Diamond"}, {"Water": "Plant"}],
	"Air": [{"Water": "Storm"}, {"Earth": "Sand"}],
	"Sand": [{"Fire": "Glass"}],
	"Glass": [{"Fire": "Bottle"}],
	"Bottle": [{"Water": "BottleWater"}, {"Storm": "BottleStorm"}],
	"Plant": [{"Fire": "Coal"}],
	"Coal": [{"Earth": "Diamond"}],
	"Storm": [{"Bottle": "BottleStorm"}]
	}


func _on_MixButton_pressed():
	if GameState.firstElement != "" and GameState.secondElement != "":
		for i in combinations.keys().size():
			for j in combinations.values()[i].size():
				if combinations.keys()[i] == GameState.firstElement and combinations.values()[i][j].keys()[0] == GameState.secondElement:
					GameState.emit_signal("unhideElement", combinations.values()[i][j].values()[0])
					if not combinations.values()[i][j].values()[0] in GameState.elementsDiscovered:
						GameState.elementsDiscovered.append(combinations.values()[i][j].values()[0])
						print(GameState.elementsDiscovered.has(combinations.values()[i][j].values()[0]))
					GameState.turns -= 1
					print(combinations.values()[i][j].values()[0])
	GameState.emit_signal("originalPosition")
	GameState.firstElement = ""
	GameState.secondElement = ""
	if GameState.turns <= 0:
		get_tree().change_scene("res://Menus/GameOver.tscn")
