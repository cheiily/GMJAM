grace_timer++;

if (speed > 1.25) {
	speed *= 0.95;
} else {
	instance_destroy();
	return;
}

var _part_info = particle_get_info(trail);
part_type_size(_part_info.emitters[0].parttype.ind, 0.25, 0.25, -0.01, 0);
part_particles_create_color(trail, x, y, _part_info.emitters[0].parttype.ind ,image_blend, 1);

move_bounce_solid(false);
move_wrap(true, true, 0);

image_angle = direction;
