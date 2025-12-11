extends Control

func _ready():
	$Button.pressed.connect(_on_start_pressed)
	
func _on_start_pressed():
	var level = load("res://scenes/level_01.tscn")
	get_tree().change_scene_to_packed(level)
