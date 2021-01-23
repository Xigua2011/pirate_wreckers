extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



# warning-ignore:unused_argument
func _on_pirate_officer_area_entered(area):
	$AnimationPlayer.play("Head off")
	$AudioStreamPlayer3D.play()
	#queue_free() # Replace with function body.
