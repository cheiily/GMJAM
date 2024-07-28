if (rollback_sync_on_frame()) {
if (speed > 1) {
	speed -= sign(speed) * 0.075 * speed;
} else {
	instance_destroy();
	return;
}

move_bounce_solid(false);
move_wrap(true, true, 0);
}