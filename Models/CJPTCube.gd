extends MeshInstance3D

var CubeRotation = 0.01
var radius = 1
var currentAngle = 0
var centre
var rotationSpeed = 1

var curTime: float = 0.0
var SCENETIME = 12.68


# Called when the node enters the scene tree for the first time.
func _ready():
	centre = self.position
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curTime += delta
	if (curTime > SCENETIME):
		get_tree().change_scene_to_file("res://Scenes/SceneBuu1.tscn")
	pass
	

func _physics_process(delta):
	rotate_x(CubeRotation)
	rotate_y(CubeRotation/2)
	rotate_y(CubeRotation*2)

	currentAngle += rotationSpeed * delta
	var offset = Vector3(cos(currentAngle), sin(currentAngle), sin(currentAngle)) * radius;
	var pos = centre + offset
	self.position = pos
	
		
