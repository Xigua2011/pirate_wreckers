extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	if $"VR/RightController".get_is_active():
#		var x = $"VR/RightController".get_joystick_axis(0)
#		var y=$"VR/RightController".get_joystick_axis(1)
#		if y > 0.5:
#			print('Up')
#			$"VR".translation.y += 0.1
#		if y < -0.5:
#			print('down')
#			$"VR".translation.y += -0.1
#
#	if Input.is_action_pressed("Move up"):
#		print("move up")
#		$"VR".translation.y += 0.1
#	if Input.is_action_pressed("Move down"):
#		print("move down")
#		$"VR".translation.y += -0.1
