extends State

func enter():
	player = get_parent().get_parent()
	state_machine = get_parent()
	animator = %AnimationPlayer

func exit(): 
	pass

func update(delta):
	pass

func physics_update(delta):
	var input: Vector2 = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),
	Input.get_action_strength("down") - Input.get_action_strength("up")).normalized()
	
	var velocity_weight_x: float = 1.0 - exp( -(player.acceleration if input.x else player.friction) * delta)
	player.velocity.x = lerp(player.velocity.x, input.x * player.max_speed, velocity_weight_x)
	
	var velocity_weight_y: float = 1.0 - exp( -(player.acceleration if input.y else player.friction) * delta)
	player.velocity.y = lerp(player.velocity.y, input.y * player.max_speed, velocity_weight_y)
	
	if player.velocity.x == 0 and player.velocity.y == 0:
		state_machine.change_state(state_machine.get_node("Idle"))
func play_animation():
	pass
