extends Spatial


var Bullet = preload("res://Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("VR_LEFT_INDEX_TRIGGER") or Input.is_action_just_pressed("fire"):
		var bullet = Bullet.instance()
		bullet.transform = self.get_global_transform()
#		bullet.translate(Vector3(0,10,0))
		get_tree().current_scene.add_child(bullet)
		$AudioStreamPlayer3D.play()
		print("bullet")
		
