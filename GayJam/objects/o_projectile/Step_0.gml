if (speed != 0) {
	speed -= sign(speed) * 0.075 * speed;
} else {
	instance_destroy();
}

move_bounce_solid(false);
move_wrap(true, true, 0);