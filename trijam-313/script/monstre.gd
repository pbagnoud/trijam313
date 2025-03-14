extends Node2D

signal food
signal bad




func _on_bouche_body_entered(body: Node2D) -> void:
	if body.is_in_group('food'):
		emit_signal('bad') 
		body.queue_free()# Replace with function body.
