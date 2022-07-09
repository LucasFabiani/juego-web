extends Node2D

func _process(delta):
	var vel:Vector2
	vel.y += int(Input.is_action_pressed("ui_down"))-int(Input.is_action_pressed("ui_up"))
	vel.x += int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))
	$Icon.position += vel*delta*200
