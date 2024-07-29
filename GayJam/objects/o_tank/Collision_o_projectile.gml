is_alive = false;
image_alpha = 0;
head.image_alpha = 0;
instance_destroy(other);
var _part_info = particle_get_info(death_effect)
part_particles_create_color(death_effect, x, y, _part_info.emitters[0].parttype.ind,color, 100);