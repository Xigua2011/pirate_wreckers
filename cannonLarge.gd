extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_Right_area_entered(area):
	rotate_y(-5.0 / 57.0)


func _on_Button_Left_area_entered(area):
	rotate_y(5.0 / 57.0)

func _on_Button_Up_area_entered(area):
	rotate_z(-5.0 / 57.0)

func _on_Button_Down_area_entered(area):
	rotate_z(5.0 / 57.0)

var Bullet = preload("res://Cannon_Ball.tscn")

func _on_Button_Fire_area_entered(area):
	var bullet = Bullet.instance()
	bullet.transform = self.get_global_transform()
	$AudioStreamPlayer3D.play()
	
	bullet.apply_central_impulse(transform.basis.z * -50)
	get_tree().current_scene.add_child(bullet)


func _on_BallDropper_area_entered(area):
	var bullet = Bullet.instance()
	bullet.transform = self.get_global_transform()
	bullet.apply_central_impulse(Vector3(0,0,1))
	get_tree().current_scene.add_child(bullet)
