extends Node3D
var curTime: float = 0.0
var SCENETIME = 12.67

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curTime += delta
	if (curTime > SCENETIME):
		get_tree().change_scene_to_file("res://Scenes/Outro.tscn")
		
	pass
