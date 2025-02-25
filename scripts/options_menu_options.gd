extends ScrollContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_fullscreen_option_value_changed(value):
	match value:
		"False": DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		"True": DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _on_shader_option_value_changed(value):
	match value:
		"VHS/CRT": $"/root/Main/Shader".material = load("res://materials/VHS_CRT.tres")
		"VHS": $"/root/Main/Shader".material = load("res://materials/VHS.tres")
		"Old TV": $"/root/Main/Shader".material = load("res://materials/Old_TV.tres")
		"Glitch": $"/root/Main/Shader".material = load("res://materials/Glitch.tres")
		"None": $"/root/Main/Shader".material = load("res://materials/None.tres")
