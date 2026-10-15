extends Node2D

const speed = 60
var direction = 1
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var animated_sprite = 	$AnimatedSprite2D
@onready var ray_cast_bottom: RayCast2D = $RayCastBottom
	
var turning = false
@onready var ray_cast_bottom_2: RayCast2D = $RayCastBottom2
func _process(delta: float) -> void:
		if ray_cast_left.is_colliding():
			animated_sprite.flip_h = false
			direction = +1 
		if ray_cast_right.is_colliding():
			direction = -1
			animated_sprite.flip_h = true 
		#if not ray_cast_bottom.is_colliding() and not turning:
			#direction *= -1
			#animated_sprite.flip_h = direction < 0
		#	turning = true
			
		#if ray_cast_bottom.is_colliding():
		#	turning = false
		if not ray_cast_bottom.is_colliding() and direction == 1:
			direction *= -1
			animated_sprite.flip_h = direction < 0
		if not ray_cast_bottom_2.is_colliding() and direction == -1:
			direction *= -1 
			animated_sprite.flip_h = direction < 0
			
		
			
		position.x +=  (direction * speed * delta) / 1.5
	

# Cals
