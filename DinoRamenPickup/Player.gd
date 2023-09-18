extends CharacterBody2D

@onready var ap = $AnimationPlayer
@onready var sprite = $Sprite

var move_speed: float = 300.0
var moveDir : int = 1;

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		moveDir = -1
		velocity.x += -1
	
	if Input.is_key_pressed(KEY_RIGHT):
		moveDir = 1
		velocity.x += 1
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y += -1
	
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
	
	sprite.flip_h = (moveDir == -1)
	
	if(velocity != Vector2.ZERO):
		ap.play("walk")
	else:
		ap.play("idle")
		
	velocity *= move_speed
	
	move_and_slide()
