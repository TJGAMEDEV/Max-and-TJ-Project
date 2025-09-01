extends State


func enter():
	player = get_parent().get_parent()
	state_machine = get_parent()
	animator = %AnimationPlayer

func exit(): 
	pass

func update(delta): pass

func physics_update(delta):
	var input_x = Input.get_axis("left", "right")
	var input_y = Input.get_axis("down", "up")
	if input_x != 0 or input_y != 0:
		state_machine.change_state(state_machine.get_node("Run"))
func play_animation(): pass
