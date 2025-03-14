extends Node

func _ready():
	$Button_start.pressed.connect(_on_start_pressed)

func _on_start_pressed():
	print("bla")
	get_tree().change_scene_to_file("res://scene/main.tscn")
