extends TabContainer

func _ready():
	set_current_tab(1)

func _on_tab_selected(tab):
	if tab == 0:
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
