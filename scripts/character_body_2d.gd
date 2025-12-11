extends CharacterBody2D
 
@onready var sfx_beh_01 = $sfx_beh_01
@onready var sfx_beh_02 = $sfx_beh_02

var speed = 400.0;
 
#func _process(delta: float) -> void:

@export var inv: Inv 
 
@onready var animation: AnimatedSprite2D = $AnimatedSprite2D
 
const SPEED = 100.0

var directionName = "bas";
func _physics_process(_delta: float) -> void:

	var direction = Vector2(
		Input.get_axis("gauche", "droite"),
		Input.get_axis("haut", "bas")
	)

	if direction != Vector2.ZERO:
		velocity = direction.normalized() * SPEED

	else:
		velocity = Vector2.ZERO


	if direction != Vector2.ZERO:
		if abs(direction.x) > abs(direction.y):
			if direction.x > 0:
				directionName = "droite";
			else:
				directionName = "gauche";

		else:
			if direction.y < 0:
				directionName = "haut";
			else:
				directionName = "bas";

	if direction == Vector2.ZERO:
		if directionName == "haut":
			animation.play("animation_idle");

		if directionName == "gauche":
			animation.play("animation_idle_gauche");

		if directionName == "droite":
			animation.play("animation_idle_droite");
			
		if directionName == "bas":
			animation.play("animation_idle_bas")
	
	else:
		animation.play("animation_" + directionName);

	move_and_slide()
	
func _process(_delta):
	if Input.is_action_just_pressed("e"):
		sfx_beh_01.play()
	
	if Input.is_action_just_pressed("f"):
		sfx_beh_02.play()

 
