extends Camera2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_drag_margin(MARGIN_LEFT, -0.2)
	set_limit(MARGIN_LEFT, -1500)
	set_limit(MARGIN_RIGHT, 1050)
	
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
