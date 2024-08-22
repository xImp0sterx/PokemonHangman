extends Node

var current_folder = ""

func get_image(pokemon_name: String) -> Texture:
	# 5% chance to choose shiny
	var folder = "normal"  # Default to normal
	current_folder = "normal"
	if randf() <= 0.05:
		folder = "shiny"
		current_folder = "shiny"
	
	# Construct the file path
	var file_path = "res://ASSETS/ART/POKEMON/%s/%s.png" % [folder, pokemon_name.to_lower().replace(" ", "").replace("_","").replace("-","").replace(".","").replace("♂","").replace("♀","")]
	
	# Load and return the image
	return load(file_path)
