extends Node2D
const FOOD = preload("res://scene/food.tscn")

var rng = RandomNumberGenerator.new()

func _on_food_spawn_timeout() -> void:
	var instance = FOOD.instantiate()
	add_child(instance) # Replace with function body.


func _on_score_up_difficulty() -> void:
	var my_random_number = rng.randf_range(0.3, 0.5)
	$food_spawn.wait_time -= my_random_number
	print("Ouhla c'est plus dur")
	
