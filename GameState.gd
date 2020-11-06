extends Node

export onready var turns = 10

onready var elementsDiscovered: Array = []

onready var elementsSelected := 0
var firstElement := ""
var secondElement := ""


signal unhideElement(name)
signal originalPosition()

