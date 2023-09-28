extends Node3D

@export var scoreText: Label
@export var numOfBalloonsText : Label
@export var maxBalloons : int = 10
@export var timeToNextBalloon : float = 3.0

var balloon = preload("res://BalloonPopper/Balloon.tscn")

var score : int = 0
var timer : float = 4.0
var numBalloons : int = 0

func increaseScore (amount):
	score += amount
	scoreText.text = str("Score: ", score)
	
func increaseBalloons ():
	numBalloons += 1
	numOfBalloonsText.text = str("Balloons: ", numBalloons)

func _process(delta):
	timer += delta
	
#	if numBalloons > maxBalloons:
#		get_tree().reload_current_scene()
	
	if(timer >= timeToNextBalloon):
		timer = 0
		_instantiateBalloon(randf_range(0.5, 1.0))
		increaseBalloons()

func _instantiateBalloon(randomSize):
	var balloonInstance = balloon.instantiate()
	add_child(balloonInstance)
	
	balloonInstance.position.x = randi_range(-6,6)
	balloonInstance.position.y = randi_range(-3.6, 3.6)
	
	balloonInstance.scale = Vector3.ONE * randomSize
