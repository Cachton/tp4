extends Area2D

@onready var Rat_node = get_node("../Rat_message")
@onready var Rat_node2 = get_node("../Rat_message2")
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
var player_in = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.coin_present:
		player_in = true
		Rat_node.show_door_label()
		message_E.show_message_E()
	else: Rat_node.show_door_label()

func _on_body_exited(_body: Node2D) -> void:
	player_in = false
	Rat_node.hide_door_label()
	message_E.hide_message_E()

func _unhandled_input(event):
	if player_in and event.is_action_pressed("e"):
		message_E.hide_message_E()
		Rat_node.hide_door_label()
		Rat_node2.show_door_label()
		HUD.potion_obtenue = true
		print("potion obtenue")
