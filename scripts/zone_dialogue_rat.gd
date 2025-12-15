extends Area2D

@onready var Rat_node = get_node("../Rat_message") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Rat_node.show_door_label()

func _on_body_exited(_body: Node2D) -> void:
	Rat_node.hide_door_label()
