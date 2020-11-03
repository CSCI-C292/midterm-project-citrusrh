extends Control


func _on_ShowMixingSpace_pressed():
	$MixingSpace.visible = true
	$Notebook.visible = false


func _on_Show_Notebook_pressed():
	$MixingSpace.visible = false
	$Notebook.visible = true
