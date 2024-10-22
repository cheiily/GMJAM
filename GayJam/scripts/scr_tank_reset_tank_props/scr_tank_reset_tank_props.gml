// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_tank_reset_tank_props(tank) {
	with (tank) {
		alarm[1] = -1;
		alarm[2] = -1;
		blink_timer = blink_time;
		bullet_type = o_projectile_0;
		scope.sprite_index = s_scope_0;
		scope.image_alpha = 0;
		shoot_cd_duration = 30;
		knockback_speed = 20;
		projectile_speed = 30;	
	}
}