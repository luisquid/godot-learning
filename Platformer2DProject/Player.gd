extends CharacterBody2D

var moveSpeed : float = 100.0
var jumpForce : float = 200.0
var gravity : float = 500.0

var score : int = 0
@onready var scoreText : Label =  get_node("CanvasLayer/ScoreText")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		
	velocity.x = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= moveSpeed
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += moveSpeed
	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y -= jumpForce
		
	move_and_slide()
	
	if global_position.y > 100:
		gameOver()
		
func gameOver():
	get_tree().reload_current_scene()
	
func addScore(amount):
	score += amount
	scoreText.text = str("Score: ", score)

