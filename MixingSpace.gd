extends ColorRect

onready var GameState = get_node("/root/GameState")

var combinations := {"Fire": {"Water": "Steam"}, "Water": {"Fire": "Steam"}}


func _on_MixButton_pressed():
	if GameState.firstElement != "" and GameState.secondElement != null:
		for i in combinations.keys().size():
			#print(combinations.values()[i].values()[0])
			if combinations.keys()[i] == GameState.firstElement and combinations.values()[i].keys()[0] == GameState.secondElement:
				#emit_signal(GameState.unhideElement(i[1]))
				GameState.turns -= 1
				print(combinations.values()[i].values()[0])
	if GameState.turns == 0:
		get_tree().change_scene("res://GameOver.tscn")
