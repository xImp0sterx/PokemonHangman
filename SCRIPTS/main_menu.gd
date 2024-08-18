extends Control



func _on_play_button_pressed() -> void:
	GameManager.go_to(GameManager.category_select_scene)


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_settings_button_pressed() -> void:
	pass # Replace with function body.
