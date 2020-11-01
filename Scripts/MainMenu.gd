extends Control



func _on_StartGameButton_pressed():
	get_tree().change_scene("res://Scenes/TestLvl.tscn")

func _on_InstructionsButton_pressed():
	$Title.visible = false
	$VersionLabel.visible = false
	$StartGameButton.visible = false
	$InstructionsButton.visible = false
	$Instructions.visible = true

func _on_BackButton_pressed():
	$Title.visible = true
	$VersionLabel.visible = true
	$StartGameButton.visible = true
	$InstructionsButton.visible = true
	$Instructions.visible = false
