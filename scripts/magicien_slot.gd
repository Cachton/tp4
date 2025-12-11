extends Area2D

@onready var sfx_magicien_scream = $sfx_magicien_scream
@onready var sfx_thud = $sfx_thud
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
@onready var message_F = get_node("../player/CharacterBody2D/message_F") 
@onready var empty_slot_node = get_node("./empty_slot")
@onready var first_gate_node = get_node("../first_gate")  
var in_magicien_zone

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.magicien_present and !HUD.magicien_pose:
		HUD.player_is_in_area_E = true
		in_magicien_zone = true
		message_E.show_message_E()

func _on_body_exited(body: Node2D) -> void:
	HUD.player_is_in_area_E = false
	in_magicien_zone = false
	message_E.hide_message_E()
	
func _process(delta):
	if in_magicien_zone and Input.is_action_just_pressed("e") and !HUD.magicien_present:
		sfx_magicien_scream.play()
		sfx_thud.play()
		empty_slot_node.hide_empty_texture()
		HUD.magicien_pose = true
		first_gate_node.homme_magicien_places()
