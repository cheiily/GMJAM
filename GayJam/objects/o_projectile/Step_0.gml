if (speed != 0) {
	speed -= sign(speed) * 0.075 * speed;
} else {
	instance_destroy();
	return;
}

move_bounce_solid(false);
move_wrap(true, true, 0);

if(!is_undefined(self.trail)) {
	part_emitter_region(self.trail, 0, x, x, y, y, ps_shape_rectangle, ps_distr_linear);
	show_debug_message("Jeszcze działa");
}
else
{
	show_debug_message("Nie działa");
}
