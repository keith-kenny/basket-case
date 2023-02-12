extends Node2D

export (PackedScene) var Dropper
export (PackedScene) var Basket
export var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("ready")
	var basket = Basket.instance()
	add_child(basket)
	pass # Replace with function body.

func _on_DropperSpawnTimer_timeout():
	print("Made it to Dropper Spawn Timer")
	$DropperPath/DroperSpawnLocation.offset = randi()
	var dropper = Dropper.instance()
	dropper.position = $DropperPath/DroperSpawnLocation.position
	dropper.connect("collected", $HUD/ScoreLabel, "update_score")
	dropper.connect("not_collected", $HUD/MissLabel, "update_miss")
	add_child(dropper)
	pass # Replace with function body.
