extends Area2D

@onready var Door_node = get_node("../Door_message") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and HUD.magicien_present and HUD.dague_present and HUD.homme_present:
		Door_node.show_door_label()

func _on_body_exited(_body: Node2D) -> void:
	Door_node.hide_door_label()
