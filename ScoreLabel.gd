extends Label

var score

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0
	text = str(score)
	pass # Replace with function body.
	
func update_score():
	score += 1
	text = str(score)
