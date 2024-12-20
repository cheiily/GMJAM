function get_input(_gpid) {
	return {
		roth: gamepad_axis_value(_gpid, gp_axislh),
		rotv: gamepad_axis_value(_gpid, gp_axislv),
		shoot: gamepad_button_check(_gpid, gp_face1),
		debug_spawn: gamepad_button_check(_gpid, gp_face3),
		start: gamepad_button_check_released(_gpid, gp_start),
		select: gamepad_button_check_released(_gpid, gp_select),
		dpad_up: gamepad_button_check_released(_gpid, gp_padu),
		dpad_down: gamepad_button_check_released(_gpid, gp_padd),
		dpad_left: gamepad_button_check_released(_gpid, gp_padl),
		dpad_right: gamepad_button_check_released(_gpid, gp_padr)
	}
}

var input = get_input(gamepad_id);

if (input.start) {
	if (phase.current == phase.finish) {
		phase.set(phase.inter);
	} else if (phase.current == phase.wait and o_game.num_connected == o_game.num_req) {
		if (o_game.pause or o_game.first_round) {
			phase.set(phase.countdown); 
			o_game.pause = false;
			o_game.first_round = false;
		} else {
			phase.set(phase.inter);
		}
	}
}

if (input.select) {
	if (phase.current == phase.finish or phase.current == phase.wait)
		game_end();
	else { 
		o_game.pause = true;
		phase.set(phase.wait);
	}
}

if (phase.current == phase.wait) {
	if (input.dpad_up and o_game.num_req < 4)
		o_game.num_req++;
	if (input.dpad_down and o_game.num_req > 2)
		o_game.num_req--;
}

if (phase.current == phase.wait) {
	if (input.dpad_right) {
		if (vol < 1) 
			vol += 0.1;
		audio_master_gain(vol);
	}
	if (input.dpad_left){
		if (vol > 0) 
			vol -= 0.1;
		audio_master_gain(vol);
	}
}

if (is_alive) {
	if (abs(input.roth) >= 0.1 or abs(input.rotv) >= 0.1) {
		head.image_angle = point_direction(0, 0, input.roth, input.rotv);
		scope.image_angle = point_direction(0, 0, input.roth, input.rotv);
	}
	
	if (phase.current == phase.game) {
		

		if (input.shoot and not shoot_cd) {
			shoot_cd = true;
			alarm[0] = shoot_cd_duration;
	
			image_angle = head.image_angle;
			direction = image_angle - 180;
			speed += knockback_speed;
			
			if (bullet_type == o_projectile_2) {
				
				proj = instance_create_layer(x + lengthdir_x(3, head.image_angle), y + lengthdir_y(3, head.image_angle), "Instances", bullet_type);
				proj.parent = self;
				proj.direction = head.image_angle;
				proj.image_angle = head.image_angle;
				proj.image_blend = color;
				proj.speed = projectile_speed;
				
				proj = instance_create_layer(x + lengthdir_x(3, head.image_angle), y + lengthdir_y(3, head.image_angle), "Instances", bullet_type);
				proj.parent = self;
				proj.direction = head.image_angle - 15;
				proj.image_angle = head.image_angle - 15;
				proj.image_blend = color;
				proj.speed = projectile_speed;
				
				proj = instance_create_layer(x + lengthdir_x(3, head.image_angle), y + lengthdir_y(3, head.image_angle), "Instances", bullet_type);
				proj.parent = self;
				proj.direction = head.image_angle + 15;
				proj.image_angle = head.image_angle + 15;
				proj.image_blend = color;
				proj.speed = projectile_speed;
				
			} else {
				proj = instance_create_layer(x + lengthdir_x(3, head.image_angle), y + lengthdir_y(3, head.image_angle), "Instances", bullet_type);
				proj.parent = self;
				proj.direction = head.image_angle;
				proj.image_angle = head.image_angle;
				proj.image_blend = color;
				proj.speed = projectile_speed;
			}
			audio_play_sound(snd_shot, 1, false)
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

scope.speed = speed;
scope.direction = direction;
