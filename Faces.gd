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


func _on_face_area_entered(area):
	$AnimationPlayer.play("Shrink")
	Globals.score += 1
	

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Shrink":
		print("Finished Shrinking")
		$AnimationPlayer.play("Normal")
		translate(Vector3(randf()*20 - 10,0,0))
