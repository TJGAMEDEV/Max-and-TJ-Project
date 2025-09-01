extends Node

var current_state: State

func _ready():
	current_state = get_node("Idle")
	current_state.enter()
	current_state.play_animation()
	
func _process(delta):
	if current_state:
		current_state.update(delta)

func _physics_process(delta):
	if current_state:
		current_state.physics_update(delta)

func change_state(new_state: State):
	if current_state:
		current_state.exit()
	current_state = new_state
	current_state.enter()
