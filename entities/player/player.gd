extends CharacterBody2D

const GRAVITY_SETTING: String = "physics/2d/default_gravity"

var gravity: float = float(ProjectSettings.get_setting(GRAVITY_SETTING))

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta

	move_and_slide()
