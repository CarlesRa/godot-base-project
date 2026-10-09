class_name PlayerIdleState
extends State

func enter() -> void:
	actor.velocity.x = 0.0
	# start idle animation

func exit() -> void:
	# stop idle animation
	pass

func physics_update(_delta: float) -> void:
	if not is_zero_approx(Input.get_axis("move_left", "move_right")):
		change_state.emit(PlayerStates.MOVE)
