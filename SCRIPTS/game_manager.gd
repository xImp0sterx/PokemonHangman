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

# Handles the scene transition
func go_to(scene):
	var transition = transition_effect.instantiate()
	get_tree().root.add_child(transition)
	
	var anim_player = transition.get_node("AnimationPlayer")
	anim_player.play("fade_out_in")
	
	# Delay the scene transition by 0.3 seconds
	await get_tree().create_timer(0.3).timeout
	
	if get_tree().current_scene:
		get_tree().current_scene.queue_free()
	
	var new_scene = scene.instantiate()
	get_tree().root.add_child(new_scene)
	get_tree().current_scene = new_scene

	await anim_player.animation_finished
	
	transition.queue_free()

# Selects a random Pokémon and its corresponding Pokédex entry
func select_random_pokemon_and_entry(gen: String):
	var pokemon_name: String
	while true:
		pokemon_name = PokemonNames.get_random_pokemon(gen)
		if pokemon_name not in selected_pokemon_set:
			selected_pokemon_set[pokemon_name] = true
			break
	
	var dex_entry = PokedexEntries.get_random_dex_entry(pokemon_name)
	var pokemon_image = ImageLoader.get_image(pokemon_name)
	
	return {
		"name": pokemon_name,
		"dex_entry": dex_entry,
		"image": pokemon_image
	}

# Resets the set of selected Pokémon
func reset_selected_pokemon():
	selected_pokemon_set.clear()

# Called when the select button is pressed in the category select screen
func _on_select_button_pressed(selected_category: String):
	var selection_data = select_random_pokemon_and_entry(selected_category)
	current_generation = selected_category
	current_pokemon_name = selection_data["name"]
	current_pokedex_entry = selection_data["dex_entry"]
	current_pokemon_image = selection_data["image"]
	# Store the selection data in the GameManager or pass it to the game scene as needed
	# For example, store it in a global variable or pass it via a method
	print(selection_data)
	# Transition to the game scene
	go_to(game_scene)
	
	
func get_new_pokemon():
	var selection_data = select_random_pokemon_and_entry(current_generation)
	current_pokemon_name = selection_data["name"]
	current_pokedex_entry = selection_data["dex_entry"]
	current_pokemon_image = selection_data["image"]
	# Update the game scene with the new Pokémon details
	print(selection_data)
