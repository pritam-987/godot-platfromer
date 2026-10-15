extends Node

@onready var label: Label = $Label
var score = 0

func add_score():
	score += 1
	label.text = "coins: " + str(score)
