extends Node2D

var player_in_area = false
@onready var sfx_scream01 = $sfx_scream01

func _ready():
	if !HUD.homme_present:
		queue_free()

func _on_zone_dialogue_body_entered(body):
	if body.is_in_group("player"):
		player_in_area = true
		HUD.homme_present = false
		sfx_scream01.play()

func _on_sfx_scream_01_finished() -> void:
	queue_free()
