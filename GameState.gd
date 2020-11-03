extends Node

#onready var Element = get_node("/root/ElementScenes/Element")
export onready var turns = 10

onready var fireDiscovered := true
onready var waterDiscovered := true
onready var steamDiscovered := false

onready var elements := 0
onready var elementsSelected := 0
var firstElement := "Water"
var secondElement := "Fire"

#signal unhideElement(Element)


#func unhideElement(e):
#	if Element.elementName == e:
#		Element.visible = true
