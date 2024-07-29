function get_input(_gpid) {
	return {
		roth: gamepad_axis_value(_gpid, gp_axislh),
		rotv: gamepad_axis_value(_gpid, gp_axislv),
		shoot: gamepad_button_check(_gpid, gp_face1),
	}
}

if (is_alive) {

	var input = get_input(gamepad_id);

	if (abs(input.roth) >= 0.0001 and abs(input.rotv) >= 0.0001)
		head.image_angle = point_direction(0, 0, input.roth, input.rotv);
	
	// allow turret turning outside game
	if (phase.current == phase.game) {

		if (input.shoot and not shoot_cd) {
			shoot_cd = true;
			alarm[0] = shoot_cd_duration;
	
			image_angle = head.image_angle;
			direction = image_angle - 180;
			speed += knockback_speed;
		
			proj = instance_create_layer(x + lengthdir_x(25, head.image_angle), y + lengthdir_y(25, head.image_angle), "Instances", o_projectile);
			proj.direction = head.image_angle;
			proj.image_angle = head.image_angle;
			proj.image_blend = color;
			proj.speed = projectile_speed;
	
		}
	
	}
	_time += 1 / game_get_speed(gamespeed_fps);
}

if (speed != 0) {
	speed *= 0.925;
}

move_bounce_solid(false);
move_wrap(true, true, 0);

head.speed = speed;
head.direction = direction;
