death_effect = part_system_create(ps_dead);
var _part_info = particle_get_info(death_effect)
part_particles_create_color(death_effect, x, y, _part_info.emitters[0].parttype.ind ,image_blend, 50);
timer = 0.0;