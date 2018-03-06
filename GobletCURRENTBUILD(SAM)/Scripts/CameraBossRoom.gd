extends Camera2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_drag_margin(MARGIN_LEFT, -0.2)
	set_limit(MARGIN_LEFT, -2000)
	set_limit(MARGIN_RIGHT, 3000)
	
	# Called every time the node is added to the scene.
	# Initialization here
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass




func _on_CamZoom_body_entered(body):
	set_zoom(Vector2(2, 2))
	pass # replace with function body


func _on_CamZoom_body_exited(body):
	set_zoom(Vector2(1.25, 1.25))
	set_offset(Vector2(0, 0))
	set_drag_margin(MARGIN_TOP, 0.6)
	pass # replace with function body


func _on_CamRaise_body_entered(body):
	set_offset(Vector2(400, -200))
	set_drag_margin(MARGIN_TOP, 1)
	pass # replace with function body


func _on_CamRaise2_body_entered(body):
	set_offset(Vector2(0, 0))
	pass # replace with function body

