extends Control

@onready var high_score_label = $HighscoreLabel

func _ready() -> void:
	high_score_label.text = "Highscore: " + str(GameManager.highscore)
	MusicPlayer.play_main_menu_music()

func _on_play_button_pressed() -> void:
	MusicPlayer.play_button_sound()
	GameManager.go_to(GameManager.category_select_scene)

func _on_exit_button_pressed() -> void:
	get_tree().quit()

func _on_settings_button_pressed() -> void:
	pass # Replace with function body.
