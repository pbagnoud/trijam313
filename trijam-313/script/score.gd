extends Control

signal up_difficulty
signal stop_game

var limit1 : int = 15
var limit2 : int = 30
var limit3 : int = 60

var limit_stop_game : int = -15

var limites = [limit1, limit2, limit3]

@onready var score_text: RichTextLabel = $Score_text

@onready var value : int = 0


func increment() :
	value += 1
	score_text.text = "Score : " + str(value)
	if value in limites:
		up_difficulty.emit()
		limites.pop_front()
		
	
	
func decrement() :
	value -= 1
	score_text.text = "Score : " + str(value)
	if value == limit_stop_game:
		get_tree().change_scene_to_file("res://scene/menu.tscn")
		


func _on_monstre_food() -> void:
	increment()

func _on_monstre_bad() -> void:
	decrement()
	
