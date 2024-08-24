extends Control

@onready var sprite = $Node/pokemonsprite
@onready var category_label = $CategoryLabel
@onready var coming_soon_label = $ComingSoonLabel
@onready var select_button = $Node/Panel/SelectButton

var current_index: int = 0
var total_categories: int = 9
var animation_names = ["gen1", "gen2", "gen3", "gen4", "gen5", "gen6", "gen7", "gen8", "all"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_update_sprite_and_label()

# Called when the left button is pressed to navigate categories
func _on_left_pressed() -> void:
	current_index = (current_index - 1 + total_categories) % total_categories
	MusicPlayer.play_button_sound()
	_update_sprite_and_label()

# Called when the right button is pressed to navigate categories
func _on_right_pressed() -> void:
	current_index = (current_index + 1) % total_categories
	MusicPlayer.play_button_sound()
	_update_sprite_and_label()

# Called when the select button is pressed to confirm category selection
func _on_select_button_pressed() -> void:
	var selected_category = animation_names[current_index]
	MusicPlayer.play_button_sound()
	
	# Store the selected category in the GameManager and transition to the game scene
	GameManager._on_select_button_pressed(selected_category)

# Updates the sprite and label based on the current selected category
func _update_sprite_and_label() -> void:
	var animation_name = animation_names[current_index]
	sprite.play(animation_name)

	# Adjust the sprite scale based on the selected category
	if animation_name == "all":
		sprite.scale = Vector2(0.5, 0.5)
		category_label.text = "All Pokémon"
	else:
		sprite.scale = Vector2(2, 2)
		category_label.text = "Generation " + str(current_index + 1)
		
	if animation_name == "gen8":
		select_button.disabled = true
		coming_soon_label.visible = true
	else:
		select_button.disabled = false
		coming_soon_label.visible = false
