bullet_type = o_projectile_0;
rotationspeed = 3.5;
shoot_cd = false;
shoot_cd_duration = 30;
knockback_speed = 20;
projectile_speed = 30;
is_alive = true;
is_outlier = false;
gamepad_id = 0;
player_id_ = 0;
death_effect = part_system_create(ps_dead);
_uniUV = shader_get_uniform(sh_rainbow, "u_uv");
_uniTime = shader_get_uniform(sh_rainbow, "u_time");
_uniSpeed = shader_get_uniform(sh_rainbow, "u_speed");
_time = 0;
_speed = 1.0;
vol = 1;
blink_time = 5;
blink_timer = blink_time;
blink_alpha = 0.4;