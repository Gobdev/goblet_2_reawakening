extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 15
const SPEED = 200
const JUMP_HEIGHT = -350
const ACCEL = 50
const MAXSPEED = 200
const SPRINT = 275
var motion = Vector2()


func _physics_process(delta):

	var friction = false
	if Input.is_action_pressed("ui_right"):
		
		motion.x = min(motion.x+ACCEL, MAXSPEED)
		$Sprite.flip_h = false
		$Sprite.play("Walk")

	elif Input.is_action_pressed("ui_left"):
		
		motion.x = max(motion.x-ACCEL, -MAXSPEED)
		$Sprite.flip_h = true
		$Sprite.play("Walk")
		
	else:
		
		$Sprite.play("Idle") 
		friction = true
		
	if is_on_floor():
		
		motion.y = GRAVITY #Resets gravity to default when on floor
		MAXSPEED = 200
			
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		if friction == true: #Friction on floor
			motion.x = lerp(motion.x, 0, 0.4)
		if Input.is_action_pressed("ui_sprint"): #Sprint function
			MAXSPEED = 275
		elif Input.is_action_just_released("ui_sprint"):
			MAXSPEED = 200
			
	else:
		
		motion.y += GRAVITY
		$Sprite.play("Idle")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.1)
		if motion.y < 0 and Input.is_action_just_pressed("ui_left"):
			MAXSPEED = 125
		if motion.y < 0 and Input.is_action_just_pressed("ui_right"):
			MAXSPEED = 125
			
		
	#Alternatively, for other gravity method change this to motion = move_and_slide(motion, UP)
	move_and_slide(motion, UP)
	
	
		
