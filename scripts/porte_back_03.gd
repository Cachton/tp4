extends Area2D

@onready var sfx_door = $sfx_door
@onready var Door_node = get_node("../Door_message") 
@onready var player = $"../player"
@onready var back_door_marker = $back_door_marker_03

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		tp_player_back()
		
func tp_player_back():
		if player and back_door_marker:
			player.global_position = back_door_marker.global_position
