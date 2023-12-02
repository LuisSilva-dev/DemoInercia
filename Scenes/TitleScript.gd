extends Node2D

@export var title1: Label = null
@export var title2: Label = null
@export var bigtitle1: Label = null
@export var bigtitle2: Label = null
@export var title3: Label = null
var FADEOUT = 6
var FADEOUT2 = 6
var curTime: float = 0.0
var SCENETIME = 14.2

# Called when the node enters the scene tree for the first time.
func _ready():
	MusicController.play_music()
	title1.modulate.a = 0
	title2.modulate.a = 0
	bigtitle1.modulate.a = 0
	bigtitle2.modulate.a = 0
	title3.modulate.a = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curTime += delta
	if (curTime < 1):
		title1.modulate.a = curTime
		title2.modulate.a = curTime
		bigtitle1.modulate.a = curTime
		bigtitle2.modulate.a = curTime
	if (curTime > FADEOUT):
		title1.modulate.a = max(0, FADEOUT+1-curTime)
		title2.modulate.a = max(0, FADEOUT+1-curTime)
		bigtitle1.modulate.a = max(0, FADEOUT+1-curTime)
		bigtitle2.modulate.a = max(0, FADEOUT+1-curTime)
	if (curTime > FADEOUT+1):
		title3.modulate.a = max(0, curTime-(FADEOUT+1))
	if (curTime > FADEOUT+FADEOUT2+1):
		title3.modulate.a = max(0, (FADEOUT+FADEOUT2+2)-curTime)
	if (curTime > SCENETIME):
		get_tree().change_scene_to_file("res://Scenes/Node3DScript.tscn")
	bigtitle1.position.x += delta*80
	bigtitle2.position.x -= delta*50
