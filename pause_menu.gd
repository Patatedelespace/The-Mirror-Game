extends Control

signal options
signal main_menu
signal resume


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_options_button_pushed():
	$AnimationPlayer.play("OptionsIn")


func _on_main_menu_button_pushed():
	main_menu.emit()


func _on_resume_button_pushed():
	resume.emit()


func _on_in_game_options_back():
	$AnimationPlayer.play("OptionsOut")
