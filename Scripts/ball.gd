extends Area2D

@export var speed: float = 700.0
var velocity = Vector2()

func _ready():
	velocity = Vector2(randf() * 2 - 1, randf() * 2 - 1).normalized() * speed
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	position += velocity * delta

	if position.y < 0 or position.y > get_viewport_rect().size.y:
		velocity.y = -velocity.y


func _on_body_entered(_body):
	velocity.x = -velocity.x
