extends KinematicBody2D

export var min_speed = 350
export var max_speed = 550
var speed = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	randomise_speed()
	pass # Replace with function body.

func _physics_process(delta):
	position.y += speed * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func randomise_position():
	pass
	
func randomise_speed():
	speed = rand_range(min_speed, max_speed)
