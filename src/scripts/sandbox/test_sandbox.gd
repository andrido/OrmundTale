class_name TestSandbox
extends Node2D


func _ready() -> void:
	_register_input_actions()
	_create_floor(Vector2(0.0, 500.0), Vector2(1600.0, 40.0))
	_create_platform(Vector2(-160.0, 380.0), Vector2(240.0, 20.0))
	_create_platform(Vector2(120.0, 260.0), Vector2(240.0, 20.0))
	_create_player(Vector2(0.0, 400.0))


func _register_input_actions() -> void:
	_ensure_action_with_keys("move_left",  [KEY_A, KEY_LEFT])
	_ensure_action_with_keys("move_right", [KEY_D, KEY_RIGHT])
	_ensure_action_with_keys("jump",       [KEY_SPACE, KEY_W, KEY_UP])


func _ensure_action_with_keys(action: String, keys: Array[Key]) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)
	for key: Key in keys:
		var ev: InputEventKey = InputEventKey.new()
		ev.keycode = key
		# Avoid duplicates at runtime (editor actions may already be present)
		var already: bool = false
		for existing: InputEvent in InputMap.action_get_events(action):
			if existing is InputEventKey and (existing as InputEventKey).keycode == key:
				already = true
				break
		if not already:
			InputMap.action_add_event(action, ev)


func _create_floor(pos: Vector2, size: Vector2) -> void:
	var body: StaticBody2D = StaticBody2D.new()
	body.position = pos

	var shape: CollisionShape2D = CollisionShape2D.new()
	var rect: RectangleShape2D = RectangleShape2D.new()
	rect.size = size
	shape.shape = rect
	body.add_child(shape)

	var visual: ColorRect = ColorRect.new()
	visual.size = size
	visual.position = -size * 0.5
	visual.color = Color(0.2, 0.2, 0.2)
	body.add_child(visual)

	add_child(body)


func _create_platform(pos: Vector2, size: Vector2) -> void:
	var body: StaticBody2D = StaticBody2D.new()
	body.position = pos

	var shape: CollisionShape2D = CollisionShape2D.new()
	var rect: RectangleShape2D = RectangleShape2D.new()
	rect.size = size
	shape.shape = rect
	body.add_child(shape)

	var visual: ColorRect = ColorRect.new()
	visual.size = size
	visual.position = -size * 0.5
	visual.color = Color(0.35, 0.35, 0.35)
	body.add_child(visual)

	add_child(body)


func _create_player(pos: Vector2) -> void:
	var player: Player = Player.new()
	player.position = pos

	# Movement Component (Composição)
	var movement: MovementComponent = MovementComponent.new()
	movement.name = "MovementComponent"
	player.add_child(movement)

	# Collision
	var shape: CollisionShape2D = CollisionShape2D.new()
	var rect: RectangleShape2D = RectangleShape2D.new()
	rect.size = Vector2(24.0, 48.0)
	shape.shape = rect
	player.add_child(shape)

	# Visual placeholder (Sprite2D com textura procedural)
	var sprite: Sprite2D = Sprite2D.new()
	sprite.name = "Sprite2D"
	var img: Image = Image.create(24, 48, false, Image.FORMAT_RGBA8)
	img.fill(Color(0.2, 0.6, 1.0))
	sprite.texture = ImageTexture.create_from_image(img)
	player.add_child(sprite)

	# Camera
	var camera: Camera2D = Camera2D.new()
	camera.position_smoothing_enabled = true
	camera.position_smoothing_speed = 8.0
	player.add_child(camera)

	add_child(player)
