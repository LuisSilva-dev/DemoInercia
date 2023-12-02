extends Node2D

@export var title1: Label = null
@export var title2: Label = null
@export var back: ColorRect = null
var curTime = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	title2.modulate.a = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curTime += delta
	title1.position.x -= delta*20
	title1.position.y -= delta*100
	if (curTime > 9.5):
		title1.modulate.a = 0
		title2.modulate.a = 1
		curTime += delta*2
		if (curTime-floor(curTime) > 0.5):
			back.color = Color(1, 1, 1, 1)
			title2.modulate.r = 0
			title2.modulate.g = 0
			title2.modulate.b = 0
		else:
			back.color = Color(0, 0, 0, 1)
			title2.modulate.r = 1
			title2.modulate.g = 1
			title2.modulate.b = 1
