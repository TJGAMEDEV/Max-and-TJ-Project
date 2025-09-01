extends State

func enter():
	player = get_parent().get_parent()
	state_machine = get_parent()
	animator = %AnimationPlayer

func exit(): 
	pass

func update(delta): pass

func physics_update(delta): pass

func play_animation(): pass
