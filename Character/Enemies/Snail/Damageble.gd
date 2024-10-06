extends Node

class_name Damageable

@export var health: float = 20

	
func got_hit(damage : int):
	health -= damage
	
	if(health<=0):
		get_parent().queue_free()
