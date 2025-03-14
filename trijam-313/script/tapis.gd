extends Node2D
const FOOD = preload("res://scene/food.tscn")

@onready var start_timer: Timer = $Start_timer


var rng = RandomNumberGenerator.new()
var start_random = rng.randf_range(0, 2)

func _ready():
	start_timer.wait_time = start_random
	start_timer.start()


func _on_food_spawn_timeout() -> void:
	var instance = FOOD.instantiate()
	add_child(instance) # Replace with function body.


func _on_score_up_difficulty() -> void:
	var my_random_number = rng.randf_range(0.3, 0.5)
	$food_spawn.wait_time -= my_random_number
	print("Ouhla c'est plus dur")
	


func _on_start_timer_timeout() -> void:
	print("fini")
	$food_spawn.start()
