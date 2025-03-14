extends CharacterBody2D
<<<<<<< Updated upstream

var speed = 300
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@export var food_id = 0

func _ready() -> void:
	food_id = randi() % 3
	animated_sprite_2d.frame = food_id
func _process(delta):
	position.x += speed*delta



func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print(event)
	if event is InputEventMouseButton and event.pressed:
		queue_free()
=======
>>>>>>> Stashed changes
