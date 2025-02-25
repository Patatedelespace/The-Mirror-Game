extends Node2D

@onready var level_name: String = get_node(".").get_parent().name

@export var finish_lines_state: Array[bool]

# Called when the node enters the scene tree for the first time.
func _ready():
	$LevelNameLabel.text = level_name


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func main_menu_entering_transition():
	$/root/Main/MainMenu.show()
	$"..".queue_free()


func _on_menu_button_pushed():
	$AnimationPlayer.play("PauseIn")
	#$/root/Main/BlackShadeTransitionColorRect/AnimationPlayer.play("BlackShadeAnimation")
	#await get_tree().create_timer(0.5).timeout
	#main_menu_entering_transition()

func end_level():
	pass

func finish_line_in(id: int):
	finish_lines_state[id] = true
	if not false in finish_lines_state:
		end_level()

func finish_line_out(id: int):
	finish_lines_state[id] = false


func _on_pause_menu_resume():
	$AnimationPlayer.play("PauseOut")


func _on_pause_menu_main_menu():
	$/root/Main/BlackShadeTransitionColorRect/AnimationPlayer.play("BlackShadeAnimation")
	await get_tree().create_timer(0.5).timeout
	main_menu_entering_transition()
