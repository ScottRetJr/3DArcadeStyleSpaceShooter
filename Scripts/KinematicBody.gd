extends KinematicBody

const LASER = preload("res://Scenes/Laser.tscn")

var alive = true

func _input(event):
	if event.is_action_pressed("ui_focus_next"):
		alive = false
		$ship1.visible = false
		$CollisionShape.visible = false
		$AnimatedSprite3D.visible = true
		$AnimatedSprite3D.play("default")
		yield(get_tree().create_timer(3.0), "timeout")
		get_tree().change_scene("res://Scenes/MainMenu.tscn")
	
	if event.is_action_pressed("z"):
		var laser = LASER.instance()
		get_parent().add_child(laser)
		laser.translation = Vector3(self.translation.x, 0, self.translation.z + 5)

func _process(delta):
	if alive == true:
		inputHandling()

func inputHandling():
	if Input.is_action_pressed("left"):
		if self.translation.x < 45:
			self.translation.x += 0.5
		if self.rotation_degrees.z > -25:
			self.rotation_degrees.z -= 1
	if Input.is_action_pressed("right"):
		if self.translation.x > -45:
			self.translation.x -= 0.5
		if self.rotation_degrees.z < 25:
			self.rotation_degrees.z += 1
		
	if Input.is_action_pressed("left") == false:
		if self.rotation_degrees.z < 0:
			self.rotation_degrees.z += 1
	if Input.is_action_pressed("right") == false:
		if self.rotation_degrees.z > 0:
			self.rotation_degrees.z -= 1

	if Input.is_action_pressed("up"):
		if self.translation.z < 15:
			self.translation.z += 0.3
	if Input.is_action_pressed("down"):
		if self.translation.z > 0:
			self.translation.z -= 0.3
