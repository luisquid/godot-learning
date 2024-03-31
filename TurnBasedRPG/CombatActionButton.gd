extends Button

var combat_action : CombatAction


func _on_pressed():
	get_node("/root/BattleScene").current_char.cast_combat_action(combat_action)
