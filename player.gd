extends CharacterBody2D

var gravity = 9
var walk_speed = 50
var jump_force = 100

func _ready():
	print("Game Started")

func _physics_process(delta):
	velocity.y += gravity
	if Input.is_key_pressed(KEY_A):
		velocity.x = -walk_speed
	elif Input.is_key_pressed(KEY_D):
		velocity.x = walk_speed
	else:
		velocity.x = 0
	if Input.is_key_pressed(KEY_SPACE):
		velocity.y = -jump_force
	move_and_slide()
