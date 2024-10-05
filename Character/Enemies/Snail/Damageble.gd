extends Node

class_name Damageable

@export var health: float = 20
	#get: 
		#return health
	#set(value):
		#SignalBus.emit_signal("on_health_changed", get_parent(),value - health)
		#health = value	
	
func got_hit(damage : int):
	health -= damage
	
	emit_signal("on_hit",get_parent(), damage)
	
	if(health<=0):
		get_parent().queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
