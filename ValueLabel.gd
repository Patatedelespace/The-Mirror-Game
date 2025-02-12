extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_h_slider_value_changed(value):
	text = str(int(((value + 30) / 30) * 100))
#	var percentage: float = ((value + 30) / 30) * 100
#	if (str(percentage).find(".") != -1):
#		text = str(percentage)
#	else:
#		text = "8"
	
