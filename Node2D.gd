extends Node2D

var target_pos

func _process(delta):
	var vel:Vector2
	vel.y += int(Input.is_action_pressed("ui_down"))-int(Input.is_action_pressed("ui_up"))
	vel.x += int(Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"))
	
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		target_pos = get_global_mouse_position()
		
	if target_pos:
		vel = (target_pos-$Icon.position).normalized()
		if target_pos.distance_to($Icon.position) < 2:
			target_pos = null
			
	$Icon.position += vel*delta*200
