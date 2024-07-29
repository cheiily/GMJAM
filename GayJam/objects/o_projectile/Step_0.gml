if (speed > 1) {
	speed *= 0.925;
} else {
	instance_destroy();
	return;
}

move_bounce_solid(false);
move_wrap(true, true, 0);
