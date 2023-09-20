extends Node3D

var score : int = 0
@export var scoreText: Label

var maxBalloons : int = 10

var timer : float = 0.0
@export var timeToNextBalloon : float = 3.0

var balloon = preload("res://BalloonPopper/Balloon.tscn")

func increaseScore (amount):
	score += amount
	scoreText.text = str("Score: ", score)
	

func _process(delta):
	timer += delta
	
	if maxBalloons > 15:
		get_tree().reload_current_scene()
	
	if(timer >= timeToNextBalloon):
		timer = 0
		
		var bInstance = balloon.instantiate()
		add_child(bInstance)
		
		bInstance.position.x = randi_range(-6, 6)
		bInstance.position.y = randi_range(-3.6, 3.6)
		
		var balloonSize = randf_range(0.5, 1.0)
		bInstance.scale = Vector3.ONE * balloonSize
		
		maxBalloons += 1
#		if balloonSize < 0.7:
#			bInstance.get_node("MeshInstance").mesh.material
