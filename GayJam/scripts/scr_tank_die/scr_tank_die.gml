// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_tank_die(tank){
	with (tank) {
		is_alive = false;
		image_alpha = 0;
		head.image_alpha = 0;
		
		scr_tank_reset_tank_props(tank);
		
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
	}
}