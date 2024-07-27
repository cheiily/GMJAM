var input = rollback_get_input();

head.image_angle = point_direction(0, 0, input.roth, input.rotv);

if (input.shoot and not shoot_cd) {
	shoot_cd = true;
	alarm[0] = shoot_cd_duration;
	
	image_angle = head.image_angle;
	direction = image_angle - 180;
	speed += 50;
}

if (speed != 0) {
	speed -= sign(speed) * 0.075 * speed;
}

move_wrap(true, true, 0);

head.speed = speed;
head.direction = direction;