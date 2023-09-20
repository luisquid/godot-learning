extends MeshInstance3D

@export var rotationSpeed : float = 10.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees += Vector3.UP * delta * rotationSpeed
