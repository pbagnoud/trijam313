extends Area2D
signal food
signal bad




func _on_body_entered(body: Node2D) -> void:
	emit_signal('bad')
