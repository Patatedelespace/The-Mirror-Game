extends HBoxContainer

@export_range(-30, 0, .1) var default_volume: int
var default_volume_true_value = int(((default_volume / 100) * 30) - 30)

# Called when the node enters the scene tree for the first time.
func _ready():
	#_on_value_changed(default_volume)
	$HSlider.value = default_volume


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_value_changed(value: float):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)
	if (value > -30):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), false)
	else:
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Music"), true)
