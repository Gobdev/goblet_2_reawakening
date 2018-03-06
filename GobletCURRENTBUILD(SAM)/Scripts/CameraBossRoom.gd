extends Camera2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_drag_margin(MARGIN_LEFT, -0.2)
	set_limit(MARGIN_LEFT, -1500)
	set_limit(MARGIN_RIGHT, 2000)
	
	# Called every time the node is added to the scene.
	# Initialization here
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



func _on_CamZoom_body_exited(body):
	set_zoom(Vector2(2, 2))
	pass # replace with function body
