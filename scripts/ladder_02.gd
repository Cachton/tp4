extends Area2D
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
@onready var spawn_point_01 = get_node("../spawn_point_01") 
var player_in = false
@onready var player = $"../player"
@onready var tp_point_02 = $spawn_point_02

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_in = true
		message_E.show_message_E()
	
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_in = false
		message_E.hide_message_E()
		
func _unhandled_input(event):
	if player_in and event.is_action_pressed("e"):
		print("penile")
		tp_player_01()
		
func tp_player_01():
	if player and tp_point_02:
		player.global_position = tp_point_02.global_position
	
	
