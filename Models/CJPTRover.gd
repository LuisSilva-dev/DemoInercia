extends MeshInstance3D


var TeapotRotation = 0.01
var radius = 1
var currentAngle = 0
var centre
var rotationSpeed = 1

var movement = Vector3(0,0,0)
var dir_x = Vector3(0,0,0)
var dir_z = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _physics_process(delta):
	currentAngle += rotationSpeed * delta
	var offset = Vector3(cos(currentAngle),sin(currentAngle*30)*0.4, sin(currentAngle)) * 0.01;

	translate_object_local(offset)



	
		
