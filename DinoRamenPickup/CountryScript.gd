extends Node2D

var countryName : String = "Mexico"
var countryPop : int = 100000000
var countryMaxAltitude : float = 3000.0
var countryUnlocked : bool = true

var money : int = 0

var gameover : bool = false;


# Called when the node enters the scene tree for the first time.
func _ready():
	money += 5
	money *= 2
	money -= 3
	money /= 2
	
	print(money)
	print(countryName," - ", countryPop, " - ", countryMaxAltitude, " - ",countryUnlocked)
	
	print(_add(1,3))
	
	if gameover:
		print("Go To Menu")
	else:
		_welcomeMessage()
		print("Keep Playing!")
	
	print(_hasWon(101))

func _add(a, b):
	var sum = a + b
	return sum
	

func _hasWon(score):
	return (score > 100)
	
func _welcomeMessage():
	print("Welcome, everynyan!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
