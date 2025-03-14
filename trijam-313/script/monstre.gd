extends Node2D

signal food
signal bad




func _on_bouche_body_entered(body: Node2D) -> void:
	emit_signal('bad') # Replace with function body.
