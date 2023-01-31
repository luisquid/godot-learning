extends Area2D

signal onCoinCollected

func _on_Coin2D_body_entered(body):
	
	emit_signal("onCoinCollected")
	
	queue_free()
	pass # Replace with function body.
