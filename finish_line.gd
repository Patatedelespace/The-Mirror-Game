extends Area2D

signal finish_line_in(id: int)
signal finish_line_out(id: int)

@export var id: int

@onready var LevelBase: Node = get_node("../LevelBase")

# Called when the node enters the scene tree for the first time.
func _ready():
	if LevelBase.has_method("finish_line_in"):
		LevelBase.connect("finish_line_in", LevelBase.finish_line_in)
	if LevelBase.has_method("finish_line_out"):
		LevelBase.connect("finish_line_out", LevelBase.finish_line_out)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	finish_line_in.emit(id)


func _on_body_exited(body):
	finish_line_out.emit(id)
