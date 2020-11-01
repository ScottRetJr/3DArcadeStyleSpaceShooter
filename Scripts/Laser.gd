extends RigidBody

var velocity: Vector3 = Vector3(0, 0, 1)

func _process(delta):
	self.translation.z += delta * 100
	if self.translation.z > 200:
		self.queue_free()
