extends Area3D

@export var clicksToPop : int = 3
@export var sizeIncrease: float = 0.2
@export var scoreToGive: int = 1

func _ready():
	clicksToPop = randi_range(3, 10)

func _on_input_event(camera, event, position, normal, shape_idx):
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * sizeIncrease
		clicksToPop -= 1
		
		if clicksToPop <= 0:
			get_node("/root/Main").increaseScore(scoreToGive)
			queue_free()


#func _process(delta):
#	print(newMat.albedo_color)
##	if clicksToPop == 3:
##		newMat.albedo_color =  Color(0.0, 1.0, 0.0, 1.0)
##	if clicksToPop == 2:
##		newMat.albedo_color =  Color(1.0, 1.0, 0.0, 1.0)
##	if clicksToPop == 1:
##		newMat.albedo_color =  Color(1.0, 0.0, 0.0, 1.0)
##
##	meshB.set_surface_override_material(0, newMat)
			
