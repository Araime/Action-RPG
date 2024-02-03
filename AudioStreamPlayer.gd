extends AudioStreamPlayer

const TRACKS = [
	"Ambient 1", "Ambient 2", "Ambient 3",
	"Ambient 4", "Ambient 5", "Ambient 6",
	"Ambient 7", "Ambient 8", "Ambient 9",
	"Ambient 10"
	]
	
func _ready():
	play_random_music()

func play_random_music():
	var rand_nb = randi() % TRACKS.size()
	var audiostream = load("res://Music and Sounds/" + TRACKS[rand_nb] + ".wav")
	get_node(".").set_stream(audiostream)


func _on_AudioStreamPlayer_finished():
	play_random_music()
