extends Area2D


var particles = preload("res://NoodlesParticles.tscn")

func _on_body_entered(body):
	body.scale.x += 0.1 # Replace with function body.
	body.scale.y += 0.1 # Replace with function body.
	
	var new_particles = particles.instantiate()	
	var scene_root = get_tree().get_root()
	
	scene_root.add_child(new_particles)
	queue_free()
	
