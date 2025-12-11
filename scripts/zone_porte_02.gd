extends Area2D

@onready var sfx_door = $sfx_door
@onready var Door_node = get_node("../Door_message") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.magicien_present and !HUD.homme_present:
		var level03 = load("res://scenes/level_03.tscn")
		get_tree().change_scene_to_packed(level03)
