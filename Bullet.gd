extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var timer = 1.5
var speed = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	translate(Vector3(0,0,-1))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector3(0,0,-delta*speed))
	timer -= delta
	if timer <0:
		queue_free()
