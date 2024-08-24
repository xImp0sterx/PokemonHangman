extends Label

var word = "HANGMAN"
var display_text = "_ _ _ _ _ _ _"
var revealed_indices = []
var revealing = true

func _ready():
	text = display_text
	start_glimmering()

func start_glimmering():
	var glimmer_timer = Timer.new()
	glimmer_timer.wait_time = 0.5  # Adjust the speed here
	glimmer_timer.one_shot = false
	glimmer_timer.connect("timeout", Callable(self, "_on_glimmer_timer_timeout"))
	add_child(glimmer_timer)
	glimmer_timer.start()

func _on_glimmer_timer_timeout():
	# When two letters are left to reveal, start hiding letters while continuing to reveal
	if revealing:
		if revealed_indices.size() < word.length() - 2:
			reveal_random_letter()
		else:
			# Continue revealing and start hiding as well
			if randf() < 0.5:
				reveal_random_letter()
			else:
				hide_random_letter()
	else:
		hide_random_letter()
	
	# Update the displayed text
	update_display_text()

	# Continue the cycle
	if revealed_indices.size() == word.length():
		revealing = false  # Switch to hiding only
	elif revealed_indices.size() == 0:
		revealing = true  # Switch to revealing only

func reveal_random_letter():
	if revealed_indices.size() < word.length():
		var random_position = randi() % word.length()
		while random_position in revealed_indices:
			random_position = randi() % word.length()
		revealed_indices.append(random_position)

func hide_random_letter():
	if revealed_indices.size() > 0:
		var random_position_to_remove = revealed_indices[randi() % revealed_indices.size()]
		revealed_indices.erase(random_position_to_remove)

func update_display_text():
	var temp_display = ""
	for i in range(word.length()):
		if i in revealed_indices:
			temp_display += word[i]
		else:
			temp_display += "_"
		if i < word.length() - 1:
			temp_display += " "
	
	display_text = temp_display
	text = display_text
