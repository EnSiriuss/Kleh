extends Node

@export var health: float = 20

func got_hit(damage : int):
	health -= damage
	
	if(health<=0):
		get_parent().queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
