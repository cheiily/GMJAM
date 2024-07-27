var input = rollback_get_input();

direction += rotationspeed * (input.right - input.left);
image_angle = direction;

if (input.up) {
	speed += 5;
}

if (speed != 0) {
	speed -= sign(speed) * 0.5;
}
