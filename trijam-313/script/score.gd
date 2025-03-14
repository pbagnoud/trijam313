extends Control

signal up_difficulty

var limit1 : int = 15
var limit2 : int = 30

@onready var score_text: RichTextLabel = $Score_text

@onready var value : int = 0



func increment() :
	value += 1
	score_text.text = "Score : " + str(value)
	if value == limit1 or value == limit2 :
		up_difficulty.emit()
	
	
func decrement() :
	value -= 1
	score_text.text = "Score : " + str(value)


func _on_monstre_food() -> void:
	increment()

func _on_monstre_bad() -> void:
	decrement()
	
