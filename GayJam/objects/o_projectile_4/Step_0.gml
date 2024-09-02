grace_timer++;

if (speed > 1.25) {
	speed *= 0.995;
} else {
	instance_destroy();
	return;
}

var _part_info = particle_get_info(trail);
part_particles_create_color(trail, x, y, _part_info.emitters[0].parttype.ind ,image_blend, 1);

move_bounce_solid(false);
move_wrap(true, true, 0);

image_angle = direction;
