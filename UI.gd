extends Control

func _physics_process(delta):
	$ColorRect/TurnCounter.text = "Turns left: " + str(GameState.turns)

func _on_ShowMixingSpace_pressed():
	$MixingSpace.visible = true
	$Notebook.visible = false


func _on_Show_Notebook_pressed():
	$MixingSpace.visible = false
	$Notebook.visible = true


func _on_Submit_pressed():
	if get_tree().get_root().get_node("Level1"):
		if GameState.elementsDiscovered.has("Steam"):
			get_tree().change_scene("res://Levels/Level2.tscn")
			GameState.turns = 10
	if get_tree().get_root().get_node("Level2"):
		if GameState.elementsDiscovered.has("Diamond"):
			get_tree().change_scene("res://Levels/Level3.tscn")
			GameState.turns = 10
	if get_tree().get_root().get_node("Level3"):
		if GameState.elementsDiscovered.has("BottleStorm"):
			get_tree().change_scene("res://Menus/YouWin.tscn")
			GameState.turns = 10
	GameState.emit_signal("originalPosition")
	GameState.firstElement = ""
	GameState.secondElement = ""
