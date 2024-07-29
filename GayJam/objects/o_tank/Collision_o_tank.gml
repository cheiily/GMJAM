var is_first = global.collision == undefined;

if (is_first) {
	global.collision = true;
	global.coll1 = self;
	global.coll1_pre_alive = is_alive;
	global.coll2 = other;
	global.coll2_pre_alive = other.is_alive;
}

if (global.coll1_pre_alive and global.coll2_pre_alive) {
	is_alive = false;
	image_alpha = 0;
	head.image_alpha = 0;
	var _part_info = particle_get_info(death_effect)
	if(is_outlier){
		for(var i = 0.0; i < 255.0; i += 2.55){
			part_particles_create_color(death_effect, x, y, _part_info.emitters[0].parttype.ind,
			make_color_hsv(i, 255, 255), 1);
		}
	}
	else{
		part_particles_create_color(death_effect, x, y, _part_info.emitters[0].parttype.ind ,color, 100);
	}
	audio_play_sound(snd_tank_death, 1, false)
} else {
	// ignore - one of the tanks is alive and so we go through it
}

if (not is_first)
	global.collision = undefined;