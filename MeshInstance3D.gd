extends MeshInstance3D

var CubeRotation = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("SpaceBar"):
		CubeRotation += 0.05
	

func _physics_process(delta):
	
	
	rotate_x(CubeRotation)
	rotate_y(CubeRotation/2)
	rotate_y(CubeRotation*2)
	
		
