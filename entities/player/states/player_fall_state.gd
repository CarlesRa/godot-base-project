class_name PlayerFallState
extends PlayerState

func enter() -> void:
	# start fall animation
	pass

func exit() -> void:
	# stop fall animation
	pass

func physics_update(_delta: float) -> void:
	_apply_horizontal_movement()
	if player.is_on_floor() and player.velocity.y >= 0.0:
		if is_zero_approx(player.velocity.x):
			_land(PlayerStates.IDLE)
			return
		_land(PlayerStates.MOVE)
		return

func _land(next_state: StringName) -> void:
	change_state.emit(next_state)
	EventBus.player_landed.emit()
