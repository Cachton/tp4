extends Area2D

@onready var sfx_door = $sfx_door
@onready var Door_node = get_node("../Door_message") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.magicien_present and !HUD.homme_present:
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		var next_level_path = "res://scenes/level_0" + str(next_level_number) + ".tscn"
		sfx_door.play()
		get_tree().change_scene_to_file(next_level_path)
