/// @description Send extra bullets
// W tym edytorze możesz zapisać swój kod
proj = instance_create_layer(x + lengthdir_x(3, head.image_angle), y + lengthdir_y(3, head.image_angle), "Instances", o_projectile);
proj.direction = head.image_angle;
proj.image_angle = head.image_angle;
proj.image_blend = color;
proj.speed = projectile_speed;
	
audio_play_sound(snd_shot, 1, false)