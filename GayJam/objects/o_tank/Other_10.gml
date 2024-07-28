/// @description Init

if (gamepad_id == 0) {
	color = c_lime;
	color_str = "green"; 
} else if (gamepad_id == 1) {
	color = c_red;
	color_str = "red";
} else if (gamepad_id == 2) {
	color = c_blue;
	color_str = "blue";
} else if (gamepad_id == 3) {
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