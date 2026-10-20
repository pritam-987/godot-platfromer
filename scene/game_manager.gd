extends Node

@onready var label: Label = $CountCoins
var score = 0

func add_score():
	score += 1
	label.text = "coins: " + str(score) + "/20"
