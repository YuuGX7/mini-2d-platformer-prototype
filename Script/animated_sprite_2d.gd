extends AnimatedSprite2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right_2d: RayCast2D = $"../RayCastRight2D"
@onready var ray_cast_left_2d: RayCast2D = $"../RayCastLeft2d"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right_2d.is_colliding():
		direction = -1
	if ray_cast_left_2d.is_colliding():
		direction = 1	
	position.x += direction * SPEED * delta
