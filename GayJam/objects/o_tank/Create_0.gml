rotationspeed = 3.5;
shoot_cd_duration = 50;
shoot_cd = false;
knockback_speed = 30;
projectile_speed = 50;
is_alive = true;
is_outlier = false;
outlier_hue = 0;

if (player_id == 0) {
	color = make_color_rgb(0, 255, 0);
	color_str = "green"; 
} else if (player_id == 1) {
	color = c_red;
	color_str = "red";
} else if (player_id == 2) {
	color = c_blue;
	color_str = "blue";
} else if (player_id == 3) {
	color = c_yellow;
	color_str = "yellow";
}

do {
	x = random(window_get_width() - 100) + 50;
	y = random(window_get_height() - 100) + 50;
} until(place_empty(x, y, other));

image_blend = color

head = instance_create_layer(x, y, "Turrets", o_tank_head);
head.tank = self;

head.image_blend = color