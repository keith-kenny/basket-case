extends KinematicBody2D

# Speed Related Variables
export (int) var speed = 250
var velocity = Vector2()

func get_input():
	print("Getting Input...")
	velocity = Vector2()
	if Input.is_action_pressed("left"):
		print("Pressing Left")
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	velocity = velocity.normalized() * speed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	print("Physics Process Occurring")
	get_input()
	velocity = move_and_slide(velocity)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
