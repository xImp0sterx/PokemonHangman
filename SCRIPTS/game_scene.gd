extends Control

@onready var pokemon_image = $PokemonImage
@onready var pokemon_name_label = $PokemonNameLabel
@onready var pokedex_label = $Control/TextureRect/PokedexLabel
@onready var hangmans_noose_image = $HangmansNoose
@onready var pokemon_cry_sound = $AudioStreamPlayer
@onready var guesses_left_label = $GuessesLeftLabel
@onready var current_score_label = $CurrentScoreLabel
@onready var high_score_label = $HighscoreLabel
@onready var buttons_container = $ButtonsContainer

var pokemon_cries_path = "res://ASSETS/SOUNDS/CRIES/"
var right_button = "res://ASSETS/ART/UI/MenuPics/SmallButtons/Right.png"
var wrong_button = "res://ASSETS/ART/UI/MenuPics/SmallButtons/wrong.png"
var noose_img_path = "res://ASSETS/ART/UI/Noose/hangman"

var used_letters: Dictionary = {}
var correct_guesses: Array = []
var guesses_left = 6
var current_score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if GameManager.current_pokemon_image == null:
		GameManager.get_new_pokemon()
		print("NO PICTURE FOUND CHANGING POKEMON")
	update_game()
	update_noose()
	update_guesses_left_label()

func update_game():
	pokemon_image.texture = GameManager.current_pokemon_image
	pokemon_name_label.text = replace_pokemon_name_with_underscores(GameManager.current_pokemon_name, GameManager.current_pokemon_name).to_upper()
	pokedex_label.text = replace_pokemon_name_with_underscores(GameManager.current_pokemon_name, GameManager.current_pokedex_entry)
	await get_tree().create_timer(0.5).timeout
	play_cry_sound()

func update_noose():
	var image_path = noose_img_path + str(guesses_left) + ".png"
	if ResourceLoader.exists(image_path):
		hangmans_noose_image.texture = load(image_path)
	else:
		print("Noose image not found at path:", image_path)

func update_guesses_left_label():
	guesses_left_label.text = "Guesses Left: " + str(guesses_left)

# Replace the pokemon's name if it is in the dex entry
func replace_pokemon_name_with_underscores(pokemon_name: String, hint: String) -> String:
	var underscores = "_".repeat(pokemon_name.length())
	return hint.replace(pokemon_name, underscores)

func play_cry_sound():
	var formatted_name = GameManager.current_pokemon_name.to_lower().replace("-", "").replace("_", "").replace(".", "").replace("♂", "").replace("♀", "")
	var cry_sound = pokemon_cries_path + formatted_name + ".ogg"
	pokemon_cry_sound.stream = load(cry_sound)
	pokemon_cry_sound.play()

# Function to handle guessing a letter
func guess_letter(letter: String, button: TextureButton) -> void:
	letter = letter.to_lower()
	if used_letters.has(letter):
		return  # Letter has already been guessed
	
	used_letters[letter] = true
	
	var pokemon_name = GameManager.current_pokemon_name.to_lower()
	if pokemon_name.find(letter) != -1:
		# Correct guess
		correct_guesses.append(letter)
		button.texture_disabled = load(right_button)
		var updated_name = ""
		for char in pokemon_name:
			if char in correct_guesses:
				updated_name += char.to_upper()
			else:
				updated_name += "_"
		pokemon_name_label.text = updated_name
		pokedex_label.text = replace_pokemon_name_with_underscores(GameManager.current_pokemon_name, GameManager.current_pokedex_entry)
		
		# Check if the entire word is guessed
		if updated_name == pokemon_name.to_upper():
			on_word_revealed()
	else:
		# Incorrect guess
		button.texture_disabled = load(wrong_button)
		guesses_left -= 1
		update_guesses_left_label()
		update_noose()
		if guesses_left == 0:
			game_over()

	button.disabled = true  # Disable the button after it's been pressed

func on_word_revealed():
	current_score += 1
	current_score_label.text = "Score: " + str(current_score)
	guesses_left += 1  # Increase guesses left by 1 for the correct word
	update_guesses_left_label()
	choose_new_pokemon()

func game_over():
	# Handle game over logic
	GameManager.go_to_game_over_scene()

func choose_new_pokemon():
	GameManager.get_new_pokemon()
	reset_game()

func reset_game():
	# Only reset correct guesses, used letters, and buttons
	correct_guesses.clear()
	used_letters.clear()
	update_game()
	update_noose()
	reset_buttons()

func reset_buttons():
	for button in buttons_container.get_children():
		button.texture_disabled = null  # Reset the button texture
		button.disabled = false  # Re-enable all buttons

# Button pressed functions
func _on_button_a_pressed() -> void: guess_letter("A", $ButtonsContainer/ButtonA)
func _on_button_b_pressed() -> void: guess_letter("B", $ButtonsContainer/ButtonB)
func _on_button_c_pressed() -> void: guess_letter("C", $ButtonsContainer/ButtonC)
func _on_button_d_pressed() -> void: guess_letter("D", $ButtonsContainer/ButtonD)
func _on_button_e_pressed() -> void: guess_letter("E", $ButtonsContainer/ButtonE)
func _on_button_f_pressed() -> void: guess_letter("F", $ButtonsContainer/ButtonF)
func _on_button_g_pressed() -> void: guess_letter("G", $ButtonsContainer/ButtonG)
func _on_button_h_pressed() -> void: guess_letter("H", $ButtonsContainer/ButtonH)
func _on_button_i_pressed() -> void: guess_letter("I", $ButtonsContainer/ButtonI)
func _on_button_j_pressed() -> void: guess_letter("J", $ButtonsContainer/ButtonJ)
func _on_button_k_pressed() -> void: guess_letter("K", $ButtonsContainer/ButtonK)
func _on_button_l_pressed() -> void: guess_letter("L", $ButtonsContainer/ButtonL)
func _on_button_m_pressed() -> void: guess_letter("M", $ButtonsContainer/ButtonM)
func _on_button_n_pressed() -> void: guess_letter("N", $ButtonsContainer/ButtonN)
func _on_button_o_pressed() -> void: guess_letter("O", $ButtonsContainer/ButtonO)
func _on_button_p_pressed() -> void: guess_letter("P", $ButtonsContainer/ButtonP)
func _on_button_q_pressed() -> void: guess_letter("Q", $ButtonsContainer/ButtonQ)
func _on_button_r_pressed() -> void: guess_letter("R", $ButtonsContainer/ButtonR)
func _on_button_s_pressed() -> void: guess_letter("S", $ButtonsContainer/ButtonS)
func _on_button_t_pressed() -> void: guess_letter("T", $ButtonsContainer/ButtonT)
func _on_button_u_pressed() -> void: guess_letter("U", $ButtonsContainer/ButtonU)
func _on_button_v_pressed() -> void: guess_letter("V", $ButtonsContainer/ButtonV)
func _on_button_w_pressed() -> void: guess_letter("W", $ButtonsContainer/ButtonW)
func _on_button_x_pressed() -> void: guess_letter("X", $ButtonsContainer/ButtonX)
func _on_button_y_pressed() -> void: guess_letter("Y", $ButtonsContainer/ButtonY)
func _on_button_z_pressed() -> void: guess_letter("Z", $ButtonsContainer/ButtonZ)
