var input = rollback_get_input();

image_angle = point_direction(0, 0, input.roth, input.rotv);

if (input.shoot and not shoot_cd) {
	shoot_cd = true;
	alarm[0] = shoot_cd_duration;
	
	direction = image_angle;
	speed += 50;
}

if (speed != 0) {
	speed -= sign(speed) * 0.075 * speed;
}
