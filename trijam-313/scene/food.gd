extends CharacterBody2D

var speed = 300
func _process(delta):
	position.x += speed*delta
