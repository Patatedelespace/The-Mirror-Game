extends Node

var key_bind = {
	"MoveDown": "ui_down"
}

var levels: Array[PackedScene] = [
	load("res://scenes/Level1.tscn"),
	load("res://scenes/Level2.tscn"),
	load("res://scenes/Level3.tscn")
	
]
