extends Control

@onready var sprite = $Node/AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
