extends Area2D

var bobHeight : float = 5.0
var bobSpeed : float = 5.0

@onready var startY : float = global_position.y
var t : float = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	t += delta
	
	var d = (sin(t * bobSpeed) + 1) / 2
	global_position.y  = startY + (d * bobHeight)


func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.addScore(1)
		queue_free()
