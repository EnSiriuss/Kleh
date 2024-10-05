extends Area2D

@export var damage : int = 10
func _on_body_entered(body):
	for child in body.get_children():
		if child is Damageadle :
			child.hit(damage)
			print_debug(body.name + "took" + str(damage) + ".")
	
