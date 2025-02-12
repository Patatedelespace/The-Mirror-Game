extends CharacterBody2D


const GAP: int = 64

#enum Direction {
	#LEFT,
	#UP,
	#RIGHT,
	#DOWN
#}

func _process(delta):
	print(velocity)
	##### code moche pour l'instant, à changer plus tard ;)
	if Input.is_action_just_pressed("ui_left"):
		velocity = Vector2(-GAP, 0)
		#move_and_slide()
		position.x -= GAP
	if Input.is_action_just_pressed("ui_right"):
		velocity = Vector2(GAP, 0)
		move_and_slide()
	if Input.is_action_just_pressed("ui_down"):
		velocity = Vector2(0, GAP)
		move_and_slide()
	if Input.is_action_just_pressed("ui_up"):
		velocity = Vector2(0, -GAP)
		move_and_slide()
	##### fin du code moche
