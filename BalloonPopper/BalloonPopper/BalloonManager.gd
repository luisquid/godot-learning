extends Node3D

var score : int = 0
@export var scoreText: Label

func increaseScore (amount):
	score += amount
	scoreText.text = str("Score: ", score)
