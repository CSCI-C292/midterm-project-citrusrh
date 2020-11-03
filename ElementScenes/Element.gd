extends Node2D

export onready var elementName := ""
onready var GameState = get_node("/root/GameState")
onready var _selected := false
var originalPosition = Vector2(0,0)

func _ready():
	GameState.elements += 1
	if GameState.elements == 1:
		self.position = Vector2(32,32)
		originalPosition = self.position
	else:
		self.position = Vector2(32*GameState.elements,32)
		originalPosition = self.position
	#connect(elementName, GameState.unhideElement(""), "")


func _on_Select_pressed():
	if _selected == false and GameState.elementsSelected < 2:
		self._selected = true
		GameState.elementsSelected += 1
		if GameState.elementsSelected == 1:
			self.position = Vector2(128,455)
		elif GameState.elementsSelected == 2:
			self.position = Vector2(384,455)
	elif _selected == true:
		self._selected = false
		GameState.elementsSelected -= 1
		self.position = originalPosition
