extends Node

var track = load("res://Music/Mixdown.mp3")
const VU_COUNT = 16
const FREQ_MAX = 11050.0

const WIDTH = 400
const HEIGHT = 100

const MIN_DB = 60

var spectrum

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func InitSpectrum():
	spectrum = AudioServer.get_bus_effect_instance(0,0)
	print(spectrum)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func GetFrequency(val):
	# Val should be between 0 and VU_COUNT
	var w = WIDTH / VU_COUNT
	var prev_hz = 0
	for i in range(1, VU_COUNT+1):
		var hz = i * FREQ_MAX / VU_COUNT;
		var magnitude: float = spectrum.get_magnitude_for_frequency_range(prev_hz, hz).length()
		var energy = clamp((MIN_DB + linear_to_db(magnitude)) / MIN_DB, 0, 1)
		var height = energy * HEIGHT
		if (i == val):
			return height
		prev_hz = hz
	return 0

func play_music():
	print("Playing music")
	$Music.stream = track
	$Music.play()
	
