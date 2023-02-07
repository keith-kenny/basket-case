extends Label

var score

# Called when the node enters the scene tree for the first time.
func _ready():
	score = 0
	text = "Score: %s" % score
	pass # Replace with function body.
	
func _on_Dropper_collected():
	score += 1
	text = "Score: %s" % score
