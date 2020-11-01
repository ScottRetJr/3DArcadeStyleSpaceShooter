extends RigidBody

func _on_Area_body_entered(body):
	if body != self:
		$ship1.visible = false
		$AnimatedSprite3D.visible = true
		$AnimatedSprite3D.play("default")
		yield(get_tree().create_timer(2.5), "timeout")
		self.queue_free()
