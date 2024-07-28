rotationspeed = 3.5;
shoot_cd_duration = 50;
shoot_cd = false;
knockback_speed = 30;
projectile_speed = 50;
is_alive = true;

if (player_id == 0)
	color = c_green;
else if (player_id == 1)
	color = c_red;
else if (player_id == 2)
	color = c_blue;
else if (player_id == 3)
	color = c_yellow;

x = random(500) + 50;
y = random(500) + 50;

image_blend = color

head = instance_create_layer(x, y, "Turrets", o_tank_head);

head.image_blend = color