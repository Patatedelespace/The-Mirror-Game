extends HBoxContainer

signal value_changed(value: String)

@export var options: Array[String]

var current_option: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$ValueLabel.text = options[0]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_prev_value_button_pushed():
	if current_option != 0:
		current_option -= 1
	else:
		current_option = options.size() - 1
	value_changed.emit(options[current_option])


func _on_next_value_button_pushed():
	current_option = (current_option + 1) % options.size()
	value_changed.emit(options[current_option])


func _on_value_changed(value):
	$ValueLabel.text = value
