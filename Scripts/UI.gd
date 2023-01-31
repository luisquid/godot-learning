extends CanvasLayer

var coins = 0

func _ready():
	
	var coinNode = get_tree().get_root().find_node("Coin2D", true, false)
	coinNode.connect("onCoinCollected", self, "handleCoinCollected")
	
	$CoinsCollectedText.text = String(coins)
	
func handleCoinCollected():
	print("COIN COLLECTED!")
	coins += 1
	$CoinsCollectedText.text = String(coins)
