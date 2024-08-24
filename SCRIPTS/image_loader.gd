extends Node

var current_folder = ""

func get_image(pokemon_name: String) -> Texture:
	# 5% chance to choose shiny
	var folder = "normal"  # Default to normal
	current_folder = "normal"
	if randf() <= 0.08:
		folder = "shiny"
		current_folder = "shiny"
	
	# Construct the file path
	var file_path = "res://ASSETS/ART/POKEMON/%s/%s.png" % [folder, pokemon_name.to_lower().replace(" ", "").replace("_","").replace("-","").replace(".","").replace("♂","").replace("♀","")]
	
	# Check if the image exists in the chosen folder
	if !ResourceLoader.exists(file_path):
		print("Image not found in folder '%s'. Checking in the shiny folder..." % folder)
		# Switch to shiny folder if not already checked
		if folder == "normal":
			folder = "shiny"
			current_folder = "shiny"
			file_path = "res://ASSETS/ART/POKEMON/%s/%s.png" % [folder, pokemon_name.to_lower().replace(" ", "").replace("_","").replace("-","").replace(".","").replace("♂","").replace("♀","")]
		# If shiny folder was chosen first and not found, fallback to normal
		elif folder == "shiny":
			print("Image not found in shiny folder either. Checking in the normal folder...")
			folder = "normal"
			current_folder = "normal"
			file_path = "res://ASSETS/ART/POKEMON/%s/%s.png" % [folder, pokemon_name.to_lower().replace(" ", "").replace("_","").replace("-","").replace(".","").replace("♂","").replace("♀","")]

	# Finally, load and return the image
	if ResourceLoader.exists(file_path):
		print("Image found in folder '%s'" % folder)
		return load(file_path)
	else:
		print("Image not found in any folder. Returning a placeholder or null.")
		return null  # Return a placeholder texture or null if not found
