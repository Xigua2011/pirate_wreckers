extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var hit_water = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if transform.origin.y < 0 and not hit_water:
		$Particles.restart()
		hit_water = true


func _on_Timer_timeout():
	queue_free()
