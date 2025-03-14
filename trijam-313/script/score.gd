extends Control

@onready var score_text: RichTextLabel = $Score_text

@onready var value : int = 0

func increment() :
	value += 1
	score_text.text = "Score : " + str(value)
	
	
func decrement() :
	value -= 1
	score_text.text = "Score : " + str(value)


func _on_monstre_food() -> void:
	increment()

	
