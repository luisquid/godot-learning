extends CanvasLayer

var coins = 0

func _ready():
	$CoinsCollectedText.text = String(coins)
	
func handleCoinCollected():
	print("COIN COLLECTED!")
	coins += 1
	$CoinsCollectedText.text = String(coins)
	
	if coins >= 2:
		## Level change
		##get_tree().change_scene("res://Scenes/World2.tscn")
		print(str(int(get_tree().current_scene.name)))
		get_tree().change_scene("res://Scenes/World" + str(int(get_tree().current_scene.name)+1)+ ".tscn")
		
