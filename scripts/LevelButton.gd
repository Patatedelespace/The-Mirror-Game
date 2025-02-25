extends TextureButton

@export var level_number: int = 1

var level_scene_instance

# Called when the node enters the scene tree for the first time.
func _ready():
	$LevelNumberLabel.text = str(level_number)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func level_entering_transition():
	level_scene_instance = GameData.levels[level_number - 1].instantiate()
	$/root/Main.add_child(level_scene_instance)
	$/root/Main/MainMenu.hide()

func _on_pressed():
	$/root/Main/BlackShadeTransitionColorRect/AnimationPlayer.play("BlackShadeAnimation")
	await get_tree().create_timer(0.5).timeout
	level_entering_transition()
	print("I'm pressed")
