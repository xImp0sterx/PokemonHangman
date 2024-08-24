extends Node

@onready var transition_effect = preload("res://SCENES/transition_effect.tscn")
@onready var main_menu_scene = preload("res://SCENES/main_menu.tscn")
@onready var category_select_scene = preload("res://SCENES/category_select.tscn")
@onready var game_scene = preload("res://SCENES/game_scene.tscn")
@onready var game_over_scene = preload("res://SCENES/game_over.tscn")

var selected_pokemon_set = {}
var current_pokemon_name = ""
var current_pokedex_entry = ""
var current_generation = ""
var current_pokemon_image: Texture2D

var highscore = 0
var current_score = 0

func _ready():
	print("GameManager Ready")
	load_highscore()
	print("Highscore Loaded: " + str(highscore))

# Resets the entire game state
func reset_game():
	print("Resetting game state")
	reset_selected_pokemon()
	current_pokemon_name = ""
	current_pokedex_entry = ""
	current_generation = ""
	current_pokemon_image = null
	current_score = 0

# Saves the high score to a ConfigFile
func save_highscore():
	print("Saving highscore: " + str(highscore))
	var config = ConfigFile.new()
	config.set_value("GameData", "highscore", highscore)
	var err = config.save("user://savegame.cfg")
	if err == OK:
		print("Highscore saved successfully")
	else:
		print("Error saving highscore: " + str(err))

# Loads the high score from a ConfigFile
func load_highscore():
	var config = ConfigFile.new()
	var err = config.load("user://savegame.cfg")
	if err == OK:
		highscore = config.get_value("GameData", "highscore", 0)
		print("Highscore loaded from file: " + str(highscore))
	else:
		print("No save file found or error loading file. Highscore set to 0.")
		highscore = 0

# Handles the scene transition
func go_to(scene):
	print("Transitioning to new scene...")
	var transition = transition_effect.instantiate()
	get_tree().root.add_child(transition)
	
	var anim_player = transition.get_node("AnimationPlayer")
	anim_player.play("fade_out_in")
	
	# Delay the scene transition by 0.3 seconds
	await get_tree().create_timer(0.3).timeout
	
	if get_tree().current_scene:
		print("Freeing current scene")
		get_tree().current_scene.queue_free()
	
	var new_scene = scene.instantiate()
	get_tree().root.add_child(new_scene)
	get_tree().current_scene = new_scene

	await anim_player.animation_finished
	
	transition.queue_free()
	print("Scene transition complete")

# Selects a random Pokémon and its corresponding Pokédex entry
func select_random_pokemon_and_entry(gen: String):
	print("Selecting random Pokémon from generation: " + gen)
	var pokemon_name: String
	while true:
		pokemon_name = PokemonNames.get_random_pokemon(gen)
		if pokemon_name not in selected_pokemon_set:
			selected_pokemon_set[pokemon_name] = true
			print("Selected Pokémon: " + pokemon_name)
			break
	
	var dex_entry = PokedexEntries.get_random_dex_entry(pokemon_name)
	var pokemon_image = ImageLoader.get_image(pokemon_name)
	
	print("Pokémon selected: " + pokemon_name + ", Dex entry: " + dex_entry)
	
	return {
		"name": pokemon_name,
		"dex_entry": dex_entry,
		"image": pokemon_image
	}

# Resets the set of selected Pokémon
func reset_selected_pokemon():
	print("Resetting selected Pokémon set")
	selected_pokemon_set.clear()

# Called when the select button is pressed in the category select screen
func _on_select_button_pressed(selected_category: String):
	print("Category selected: " + selected_category)
	var selection_data = select_random_pokemon_and_entry(selected_category)
	current_generation = selected_category
	current_pokemon_name = selection_data["name"]
	current_pokedex_entry = selection_data["dex_entry"]
	current_pokemon_image = selection_data["image"]
	print("Pokémon for game scene: " + current_pokemon_name)
	go_to(game_scene)
	
func get_new_pokemon():
	print("Getting new Pokémon")
	var selection_data = select_random_pokemon_and_entry(current_generation)
	current_pokemon_name = selection_data["name"]
	current_pokedex_entry = selection_data["dex_entry"]
	current_pokemon_image = selection_data["image"]
	print("New Pokémon selected: " + current_pokemon_name)
