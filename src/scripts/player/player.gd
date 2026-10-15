class_name Player
extends CharacterBody2D

## Entidade Base do Jogador (Ormund Tale)
## Utiliza arquitetura baseada em componentes: locomoção delegada ao MovementComponent.

@onready var movement: MovementComponent = $MovementComponent
@onready var _sprite: Sprite2D = $Sprite2D


func _physics_process(delta: float) -> void:
	if is_instance_valid(movement):
		movement.apply_gravity(self, delta)
		movement.update_timers(self, delta)
		movement.handle_jump(self)
		movement.handle_horizontal_movement(self, delta)

	_update_sprite_direction()
	move_and_slide()


func _update_sprite_direction() -> void:
	if not is_instance_valid(_sprite):
		return
	var direction: float = Input.get_axis("move_left", "move_right")
	if direction != 0.0:
		_sprite.flip_h = direction < 0.0
