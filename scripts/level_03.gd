extends Control

@onready var sfx_beh_01 = $sfx_beh_01

func _ready():
	$Button.pressed.connect(_on_start_pressed)
	
func _on_start_pressed():
	sfx_beh_01.play()
