rotationspeed = 3.5;
shoot_cd_duration = 30;
shoot_cd = false;
knockback_speed = 30;
projectile_speed = 50;
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

