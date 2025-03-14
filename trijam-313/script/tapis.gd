extends Node2D
const FOOD = preload("res://scene/food.tscn")


func _on_food_spawn_timeout() -> void:
	var instance = FOOD.instantiate()
	add_child(instance) # Replace with function body.
