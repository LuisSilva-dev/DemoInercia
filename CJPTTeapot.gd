extends MeshInstance3D

var TeapotRotation = 0.01
var radius = 1
var currentAngle = 0
var centre
var rotationSpeed = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _physics_process(delta):
	rotate_y(-TeapotRotation)


	
		
