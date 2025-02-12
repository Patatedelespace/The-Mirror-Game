extends Node2D

@onready var level_name: String = get_node(".").get_parent().name

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
	$/root/Main/BlackShadeTransitionColorRect/AnimationPlayer.play("BlackShadeAnimation")
	await get_tree().create_timer(0.5).timeout
	main_menu_entering_transition()
