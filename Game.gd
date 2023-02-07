extends Node2D

export (PackedScene) var Dropper

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("ready")
	var dropper = Dropper.instance()
	dropper.position = Vector2(20,20)
	print(dropper.position)
	add_child(dropper)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DropperSpawnTimer_timeout():
	print("Made it to Dropper Spawn Timer")
	$DropperPath/DroperSpawnLocation.offset = randi()
	var dropper = Dropper.instance()
	dropper.position = $DropperPath/DroperSpawnLocation.position
	add_child(dropper)
	pass # Replace with function body.
