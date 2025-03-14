extends CharacterBody2D

var speed = 300
func _process(delta):
	position.x += speed*delta


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print(event)
	if event is InputEventMouseButton and event.pressed:
		queue_free()
