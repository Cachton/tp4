extends Area2D

@onready var knight_node = get_node("../knight_message")
@onready var knight_node2 = get_node("../knight_message2")
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
@onready var porte_fin = get_node("../zone_message")

var player_in = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and HUD.potion_obtenue:
		player_in = true
		knight_node.show_door_label()
		message_E.show_message_E()
	else: knight_node.show_door_label()

func _on_body_exited(_body: Node2D) -> void:
	player_in = false
	knight_node.hide_door_label()
	message_E.hide_message_E()
	
func _unhandled_input(event):
	if player_in and HUD.potion_obtenue and event.is_action_pressed("e"):
		message_E.hide_message_E()
		knight_node.hide_door_label()
		knight_node2.show_door_label()
		porte_fin.clear_porte()
		
