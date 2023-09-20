extends Node2D

@export var amountOfStars : int = 1000
var starScene = preload("res://Loops/Star.tscn")
 
# Called when the node enters the scene tree for the first time.
func _ready():
	var cameraNode: Camera2D = get_node("Camera2D")
	
	print(cameraNode.get_window().size.x / 2)
	
	for i in amountOfStars:
		var star = starScene.instantiate()
		add_child(star)
		
		
		star.position.x = randi_range(-cameraNode.get_window().size.x / 2, cameraNode.get_window().size.x / 2)
		star.position.y = randi_range(-cameraNode.get_window().size.y / 2, cameraNode.get_window().size.y / 2)
		
		print(star.position)
		
		var starSize = randf_range(0.5, 1.0)
		star.scale = Vector2.ONE * starSize
