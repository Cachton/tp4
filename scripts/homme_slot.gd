extends Area2D

@onready var sfx_homme_scream = $sfx_homme_scream
@onready var sfx_thud = $sfx_thud
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
@onready var message_F = get_node("../player/CharacterBody2D/message_F") 
@onready var empty_slot_node = get_node("./empty_slot") 
@onready var first_gate_node = get_node("../first_gate") 

var in_homme_zone

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.homme_present and !HUD.homme_pose:
		HUD.player_is_in_area_E = true
		in_homme_zone = true
		message_E.show_message_E()

func _on_body_exited(body: Node2D) -> void:
	HUD.player_is_in_area_E = false
	in_homme_zone = false
	message_E.hide_message_E()
	
func _process(delta):
	if in_homme_zone and Input.is_action_just_pressed("e") and !HUD.homme_present:
		sfx_homme_scream.play()
		sfx_thud.play()
		empty_slot_node.hide_empty_texture()
		HUD.homme_pose = true
		first_gate_node.homme_magicien_places()
