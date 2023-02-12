extends Label
signal gameover

var allowed_misses = 0

func _ready():
	allowed_misses = 3
	text = str(3)
	add_color_override("font_color", Color(1,0,0))


func update_miss():
	if allowed_misses > 0:
		allowed_misses = allowed_misses - 1
	else:
		emit_signal("gameover")
	
	text = str(allowed_misses)
	
