extends Control

@onready var highscore_label = $HighscoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	highscore_label.text = "HIGHSCORE: " + str(GameManager.highscore)
	MusicPlayer.play_game_over_music()

func _on_main_menu_button_pressed() -> void:
	GameManager.reset_game()  # Reset the game state
	GameManager.go_to(GameManager.main_menu_scene)  # Return to main menu

func _on_exit_button_pressed() -> void:
	get_tree().quit()
