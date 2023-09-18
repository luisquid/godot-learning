extends Area3D

@export var clicksToPop : int = 3
@export var sizeIncrease: float = 0.2
@export var scoreToGive: int = 1





func _on_input_event(camera, event, position, normal, shape_idx):
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * sizeIncrease
		clicksToPop -= 1
		
		if clicksToPop <= 0:
			get_node("/root/Main").increaseScore(scoreToGive)
			queue_free()
