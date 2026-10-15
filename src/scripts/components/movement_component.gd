class_name MovementComponent
extends Node

## Componente reutilizável de locomoção 2D (Godot 4)
## Gerencia física horizontal, gravidade, pulo variável, coyote time e jump buffer.

@export_group("Movimentação")
@export var speed: float = 220.0
@export var acceleration: float = 900.0
@export var friction: float = 1200.0
@export var air_control: float = 500.0

@export_group("Pulo")
@export var jump_velocity: float = -520.0

@export_group("Feel")
@export var coyote_time: float = 0.12
@export var jump_buffer_time: float = 0.12

var _gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
var _coyote_timer: float = 0.0
var _jump_buffer_timer: float = 0.0
var _was_on_floor: bool = false


func update_timers(body: CharacterBody2D, delta: float) -> void:
	if _was_on_floor and not body.is_on_floor():
		_coyote_timer = coyote_time
	elif body.is_on_floor():
		_coyote_timer = coyote_time

	if not body.is_on_floor():
		_coyote_timer -= delta

	_was_on_floor = body.is_on_floor()

	if _jump_buffer_timer > 0.0:
		_jump_buffer_timer -= delta


func apply_gravity(body: CharacterBody2D, delta: float) -> void:
	if not body.is_on_floor():
		body.velocity.y += _gravity * delta


func handle_jump(body: CharacterBody2D) -> void:
	if Input.is_action_just_pressed("jump"):
		_jump_buffer_timer = jump_buffer_time

	var can_jump: bool = _coyote_timer > 0.0
	if _jump_buffer_timer > 0.0 and can_jump:
		body.velocity.y = jump_velocity
		_coyote_timer = 0.0
		_jump_buffer_timer = 0.0

	# Pulo variável: cortar velocidade vertical ao soltar o botão no ar
	if Input.is_action_just_released("jump") and body.velocity.y < 0.0:
		body.velocity.y *= 0.5


func handle_horizontal_movement(body: CharacterBody2D, delta: float) -> void:
	var direction: float = Input.get_axis("move_left", "move_right")
	var accel: float = acceleration if body.is_on_floor() else air_control

	if direction != 0.0:
		body.velocity.x = move_toward(body.velocity.x, direction * speed, accel * delta)
	else:
		var decel: float = friction if body.is_on_floor() else air_control
		body.velocity.x = move_toward(body.velocity.x, 0.0, decel * delta)
