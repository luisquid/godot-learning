extends Area2D


var particles = preload("res://NoodlesParticles.tscn")

func _on_body_entered(body):
	body.scale.x += 0.1 
	body.scale.y += 0.1 
	
	var new_particles : CPUParticles2D = particles.instantiate()	
	new_particles.global_position = body.global_position
	new_particles.emitting = true
	
	var scene_root = get_tree().get_root()
	
	scene_root.add_child(new_particles)
	queue_free()
	
