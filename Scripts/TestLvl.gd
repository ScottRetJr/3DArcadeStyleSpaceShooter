extends Spatial

func _process(delta):
	if $Enemies.get_child_count() == 0:
		$Sprite3D.visible = true
