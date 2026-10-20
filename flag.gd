extends Area2D

@onready var player: CharacterBody2D = $"../Player"
@onready var win_menu: Control = $"../CanvasLayer/WinMenu"


var game_finished: bool = false

func _ready() -> void:
	win_menu.hide()

func _on_body_entered(body: Node2D) -> void:
	if game_finished or body != player:
		return
	
	game_finished = true
		
	# stop the game
	player.velocity = Vector2.ZERO
	player.set_physics_process(false)
	player.set_process(false)
	get_tree().paused = true

	# show the menu
	win_menu.show()
