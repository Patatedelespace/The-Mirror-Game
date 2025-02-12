extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
#	$"..".add_user_signal("value_changed", [{"name": "value", "type": TYPE_FLOAT}])
	if ($"..".has_method("_on_value_changed")):
		connect("value_changed", $".."._on_value_changed)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_exited():
	focus_mode = Control.FOCUS_NONE
