# Thanks to *DevWorm* for creating the YouTube tutorial on smooth movement in Godot 4!
# -------------------------------------------------------------------
# YouTube Channel: https://www.youtube.com/@dev-worm | *DevWorm*
# YouTube Video: https://www.youtube.com/watch?v=KceMokK2qFA | *How to Create SMOOTH Player Movement in Godot 4.0*
# -------------------------------------------------------------------

extends CharacterBody2D

# Physics Config
const MAX_SPEED = 200   # THESE VALUES WILL SEEM VERY OFF FOR NORMAL PHYSICS BECAUSE
const ACCEL = 50        # WE ARE TRYING TO SIMULATE WHAT IT'S LIKE MOVING A SUBMARINE
const FRICTION = 100    # UNDER WATER. THESE ARE ALSO THE VALEUS FOR TIER 1 MOTOR.

# Store direction in Vector2
var direction = Vector2.ZERO

# Get direction from user input
func get_input():
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	
	return direction.normalized()

# Run physics processes from the config above
func _physics_process(delta):
	direction = get_input()
	
	if direction == Vector2.ZERO:
		if velocity.length() > (FRICTION * delta):
			velocity -= velocity.normalized() * (FRICTION * delta)
		else:
			velocity = Vector2.ZERO
	else:
		velocity += (direction * ACCEL * delta)
		velocity = velocity.limit_length(MAX_SPEED)
	
	move_and_slide()
