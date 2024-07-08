extends Control

func _on_new_save_pressed():
	get_tree().change_scene_to_file("res://scenes/caribbean.tscn")

func _on_load_save_pressed():
	pass # Replace with function body.

func _on_options_settings_pressed():
	pass # Replace with function body.

func _on_save_quit_pressed():
	get_tree().quit() # Replace with function body.
