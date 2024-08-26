extends VisibleOnScreenNotifier2D

@onready var anim: AnimatedSprite2D = $"../anim"


# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy_types = anim.sprite_frames.get_animation_names()
	anim.play(enemy_types[randi() % enemy_types.size()])
	print(enemy_types)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_visible_screen_exited():
	queue_free()
