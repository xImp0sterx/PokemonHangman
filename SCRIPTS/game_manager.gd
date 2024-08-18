extends Node


@onready var transition_effect = preload("res://SCENES/transition_effect.tscn")
@onready var main_menu_scene = preload("res://SCENES/main_menu.tscn")
@onready var category_select_scene = preload("res://SCENES/category_select.tscn")

func go_to(scene):
	var transition = transition_effect.instantiate()
	get_tree().root.add_child(transition)
	
	var anim_player = transition.get_node("AnimationPlayer")
	anim_player.play("fade_out_in")
	
	# Delay the scene transition by 0.03 seconds
	await get_tree().create_timer(0.3).timeout
	#await get_tree().create_timer(delay_timer).timeout
	
	if get_tree().current_scene:
		get_tree().current_scene.queue_free()
	
	var new_scene = scene.instantiate()
	get_tree().root.add_child(new_scene)
	get_tree().current_scene = new_scene

	await anim_player.animation_finished
	
	transition.queue_free()
