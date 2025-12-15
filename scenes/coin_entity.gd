extends Node2D

var player_in_area = false
@onready var sfx_coins = $zone_dialogue/sfx_coins

func _ready():
	if !HUD.coin_present:
		queue_free()

func _on_zone_dialogue_body_entered(body):
	if body.is_in_group("player"):
		player_in_area = true
		HUD.coin_present = false
		sfx_coins.play()
		

func _on_sfx_coins_finished() -> void:
	queue_free()
