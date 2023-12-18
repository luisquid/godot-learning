extends Area2D

@export var moveSpeed: float = 30.0
@export var moveDir : Vector2

var startPos : Vector2
var targetPos : Vector2 


# Called when the node enters the scene tree for the first time.
func _ready():
	startPos = global_position
	targetPos = startPos + moveDir

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = global_position.move_toward(targetPos, moveSpeed * delta)
	
	if global_position == targetPos:
		if global_position == startPos:
			targetPos = startPos + moveDir
		else:
			targetPos = startPos


func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.gameOver()
