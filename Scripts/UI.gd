extends CanvasLayer

var coins = 0

func _ready():
	$CoinsCollectedText.text = String(coins)
	
func handleCoinCollected():
	print("COIN COLLECTED!")
	coins += 1
	$CoinsCollectedText.text = String(coins)
	
	if coins >= 2:
		get_tree().change_scene("res://Scenes/World2.tscn")
		pass
