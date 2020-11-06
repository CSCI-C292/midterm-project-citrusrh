extends Node2D

onready var GameState = get_node("/root/GameState")
var originalPosition = Vector2(0,0)

func _ready():
	originalPosition = self.position
	GameState.connect("unhideElement", self, "on_element_unhidden")
	GameState.connect("originalPosition", self, "on_original_position")


func _on_Select_pressed():
	if GameState.firstElement == "":
		GameState.firstElement = self.name
		self.position = Vector2(128,455)
	elif not GameState.firstElement == self.name and GameState.secondElement == "":
		GameState.secondElement = self.name
		self.position = Vector2(384,455)
	elif GameState.firstElement == self.name:
		GameState.firstElement = ""
		self.position = originalPosition
	elif GameState.secondElement == self.name:
		GameState.secondElement = ""
		self.position = originalPosition
		

func on_element_unhidden(name):
	if self.name == name:
		self.visible = true
		

func on_original_position():
	self.position = originalPosition
