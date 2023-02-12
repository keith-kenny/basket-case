extends RigidBody2D
signal collected
signal not_collected

export var min_gravity = 2
export var max_gravity = 4

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	randomise_gravity_scale()
	pass # Replace with function body.

func randomise_gravity_scale():
	gravity_scale = rand_range(min_gravity, max_gravity)

func _on_VisibilityNotifier2D_screen_exited():
	print("I have left the screen")
	emit_signal("not_collected")
	queue_free()

func collect():
	emit_signal("collected")
	queue_free()
	
