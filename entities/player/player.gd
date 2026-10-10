class_name Player
extends CharacterBody2D

const GRAVITY_SETTING: String = "physics/2d/default_gravity"

## Horizontal speed in px/s.
@export var move_speed: float = 200.0
## Initial vertical speed of a jump in px/s. Negative goes up.
@export var jump_velocity: float = -400

var gravity: float = float(ProjectSettings.get_setting(GRAVITY_SETTING))

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta

	move_and_slide()
