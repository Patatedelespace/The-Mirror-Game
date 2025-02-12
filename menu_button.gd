extends Control

@export_enum("Main", "Options", "LevelSelect", "NONE") var menu: String

@export_enum("leave", "emit", "NONE") var action: String

signal pushed

@onready var act_dic = {
	"leave" : get_tree().quit,
	"emit" : pushed.emit
}


func _on_texture_button_pressed():
	if (menu != "NONE"):
		if (menu == "Main"):
			#$"/root/Main/MainMenu/SlideAnimPlayer".play($"/root/Main/MainMenu".current_menu + "Out")
			$"../../SlideAnimPlayer".play($"../..".current_menu + "Out")
		else:
			#$"/root/Main/MainMenu/SlideAnimPlayer".play(menu + "In")
			$"../../SlideAnimPlayer".play(menu + "In")
	else:
		if (action != "NONE"):
			act_dic[action].call()

func _on_texture_button_focus_entered():
	$"AnimationPlayer".play("focus_in")

func _on_texture_button_mouse_entered():
	$"AnimationPlayer".play("focus_in")


func _on_texture_button_focus_exited():
	$"AnimationPlayer".play("focus_out")


func _on_texture_button_mouse_exited():
	$"AnimationPlayer".play("focus_out")
