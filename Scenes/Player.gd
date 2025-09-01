extends CharacterBody2D

@onready var state_machine: Node = $"State Machine"


var max_speed = 200
var acceleration = 10
var friction = 10


func _physics_process(delta):
	if state_machine.has_method("physics_update"):
		state_machine.physics_update(delta)

	# Move the player using velocity
	move_and_slide()
