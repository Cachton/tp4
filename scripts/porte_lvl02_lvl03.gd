extends Area2D

@onready var sfx_door = $sfx_door
@onready var Door_node = get_node("../Door_message") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		var endscene = load("res://scenes/endscene.tscn")
		get_tree().change_scene_to_packed(endscene)
