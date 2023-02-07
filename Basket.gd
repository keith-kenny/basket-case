extends Area2D
signal collect
export (PackedScene) var test_dropper

# Speed Related Variables
export (int) var speed = 550
var velocity = Vector2()
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	velocity = velocity.normalized() * speed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	get_input()
	position += velocity * delta

func _on_Basket_body_entered(body):
	emit_signal("collect")
	body.collect()
	pass # Replace with function body.
