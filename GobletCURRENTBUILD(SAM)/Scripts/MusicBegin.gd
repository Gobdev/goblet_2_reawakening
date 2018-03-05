extends Area2D
signal music_begin

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "MC":
			$Music.play()