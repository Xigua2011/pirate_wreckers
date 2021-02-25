extends Spatial


var Bullet = preload("res://Bullet.tscn")

export var bullet_time = 1
export var time_between_bullets = 1
export var bullet_speed = 6
var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer -= delta
	if (Input.is_action_pressed("VR_LEFT_INDEX_TRIGGER") or Input.is_action_pressed("fire")) and timer <0:
		var bullet = Bullet.instance()
		bullet.timer = bullet_time
		bullet.speed = bullet_speed
		bullet.transform = self.get_global_transform()
		get_tree().current_scene.add_child(bullet)
		$AudioStreamPlayer3D.play()
		print("bullet")
		timer = time_between_bullets
		
