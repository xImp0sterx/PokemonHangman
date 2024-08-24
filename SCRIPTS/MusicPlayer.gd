extends Node

# Variables for the main music player and sound effects player
var music_player: AudioStreamPlayer
var sfx_player: AudioStreamPlayer

@onready var main_menu_music = load("res://ASSETS/SOUNDS/MainMenu.mp3")
@onready var game_music = [
	load("res://ASSETS/SOUNDS/game1.mp3"),
	load("res://ASSETS/SOUNDS/game2.mp3"),
	load("res://ASSETS/SOUNDS/game3.mp3")
]
@onready var game_over_music = load("res://ASSETS/SOUNDS/GameOver.mp3")
@onready var button_sound = load("res://ASSETS/SOUNDS/ButtonSound.wav")

var current_game_track_index = 0

func _ready() -> void:
	# Create the AudioStreamPlayer nodes
	music_player = AudioStreamPlayer.new()
	sfx_player = AudioStreamPlayer.new()
	
	# Add the players to the scene tree so they work properly
	add_child(music_player)
	add_child(sfx_player)
	
	# Connect the finished signal for music_player to handle track cycling
	music_player.connect("finished", Callable(self, "play_next_game_track"))

# Function to play main menu music with adjusted volume and pitch
func play_main_menu_music():
	if music_player.stream != main_menu_music:
		music_player.stream = main_menu_music
		music_player.volume_db = -8  # Set the volume to -8 dB
		music_player.pitch_scale = 0.5  # Set the pitch scale to 0.5
		music_player.play()

# Function to start playing game music, cycling through the list
func play_game_music():
	current_game_track_index = randi() % game_music.size()
	music_player.stream = game_music[current_game_track_index]
	music_player.volume_db = -8  # Set the volume to -4 dB
	music_player.pitch_scale = 1  # Set the pitch scale to default (1)
	music_player.play()

# Function to play the next game music track
func play_next_game_track():
	current_game_track_index = (current_game_track_index + 1) % game_music.size()
	music_player.stream = game_music[current_game_track_index]
	music_player.play()

# Function to play game over music
func play_game_over_music():
	if music_player.stream != game_over_music:
		music_player.stream = game_over_music
		music_player.volume_db = -8  # Set the volume to -4 dB
		music_player.pitch_scale = 1  # Set the pitch scale to default (1)
		music_player.play()

# Function to play a button sound effect
func play_button_sound():
	sfx_player.stream = button_sound
	sfx_player.volume_db = 3
	sfx_player.play()

# Function to stop the music
func stop_music():
	if music_player.playing:
		music_player.stop()
