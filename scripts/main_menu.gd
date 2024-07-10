extends Control

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://scenes/game_menu.tscn")

func _on_load_game_pressed():
	pass # Replace with function body.

func _on_settings_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
