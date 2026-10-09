class_name PlayerMoveState
extends State

@export var speed: float = 200.0

func enter() -> void:
	# start move animation
	pass

func exit() -> void:
	# stop move animation
	pass

func physics_update(_delta: float) -> void:
	var direction: float = Input.get_axis("move_left", "move_right")
	if is_zero_approx(direction):
		change_state.emit(PlayerStates.IDLE)
		return
	actor.velocity.x = direction * speed
