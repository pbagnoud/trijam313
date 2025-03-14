extends Node2D

signal food
signal bad


var good_id = 2

func _on_bouche_body_entered(body: Node2D) -> void:
	if body.is_in_group('food'):
		if body.food_id == 0 or body.food_id == 1:
			emit_signal('bad')
		if body.food_id == good_id:
			emit_signal('food')
		body.queue_free()# Replace with function body.
