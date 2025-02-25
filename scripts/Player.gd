extends CharacterBody2D


const GAP: int = 64

#@export var v_invert: bool
#@export var h_invert: bool

@export_enum("none", "vertical", "horizontal", "both") var mirror_modifier = 0
@export_enum("0", "90", "180", "270") var turn_modifier = 0


#enum Direction {
	#LEFT,
	#UP,
	#RIGHT,
	#DOWN
#}

func apply_modifier():
	match mirror_modifier:
		1:
			velocity = Vector2(velocity.x, -velocity.y)
		2:
			velocity = Vector2(-velocity.x, velocity.y)
		3:
			velocity *= -1
	
	match turn_modifier:
		1:
			velocity = Vector2(-velocity.y, -velocity.x)
		2:
			velocity *= -1
		3:
			velocity = Vector2(velocity.y, velocity.x)
	

func _process(delta):
	print(get_node(".").name, ": ", velocity, " (mirror modifier: ", mirror_modifier, ")")
	##### code moche pour l'instant, à changer plus tard ;)
	if Input.is_action_just_pressed("ui_left"):
		velocity = Vector2(-GAP, 0) / delta
		apply_modifier()
		move_and_slide()
	if Input.is_action_just_pressed("ui_right"):
		velocity = Vector2(GAP, 0) / delta
		apply_modifier()
		move_and_slide()
	if Input.is_action_just_pressed("ui_down"):
		velocity = Vector2(0, GAP) / delta
		apply_modifier()
		move_and_slide()
	if Input.is_action_just_pressed("ui_up"):
		velocity = Vector2(0, -GAP) / delta
		apply_modifier()
		move_and_slide()
	##### fin du code moche
