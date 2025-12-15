extends Node2D

@onready var spawn_point_01 = get_node("../spawn_point_01") 
@onready var spawn_point_02 = get_node("../spawn_point_02") 
@onready var spawn_point_03 = get_node("../spawn_point_03") 
@onready var spawn_point_04 = get_node("../spawn_point_04") 
@onready var spawn_point_05 = get_node("../spawn_point_05") 
@onready var spawn_point_06 = get_node("../spawn_point_06") 

func Spawn_at_01()
	if HUD.used_path_01 == true
