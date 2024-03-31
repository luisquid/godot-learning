extends Node

@export var player_char : Node
@export var enemy_char : Node

var current_char : Character

@export var next_turn_delay : float = 1.0

var game_over : bool = false

signal character_begin_turn(character)
signal character_end_turn(character)

# Called when the node enters the scene tree for the first time.
func _ready():	
	begin_next_turn()

func begin_next_turn():
	if current_char == player_char:
		current_char = enemy_char
	elif current_char == enemy_char:
		current_char = player_char
	else:
		current_char = player_char
		
	emit_signal("character_begin_turn", current_char)
	
func end_current_turn():
	emit_signal("character_end_turn", current_char)
	await get_tree().create_timer(next_turn_delay).timeout
	
	if game_over == false:
		begin_next_turn()

func character_died(character):
	game_over = true
	
	if character.is_player == true:
		print("Game Over!")
	else:
		print("You Win!")


