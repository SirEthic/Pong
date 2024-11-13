extends CharacterBody2D

const SPEED = 700.0
@onready var sprite = $Sprite

func _physics_process(_delta):

	var direction = Input.get_axis("Up2", "Down2")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	position.y = clamp(position.y, $Sprite.texture.get_size().y/2, get_viewport_rect().size.y - $Sprite.texture.get_size().y/2)

	move_and_slide()
