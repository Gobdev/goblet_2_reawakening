extends AudioStreamPlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var wait_time = 0
var allow_play = false

func _ready():
	
	# Initialization here
	pass

func _process(delta):
	if (allow_play and not self.playing):
		if (wait_time <= 0):
			wait_time = 1
		else:
			print(wait_time)
			wait_time -= delta
			if (wait_time <= 0):
				self.play()

func allow_play():
	self.allow_play = true
