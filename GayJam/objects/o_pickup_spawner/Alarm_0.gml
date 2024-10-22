if (phase.current == phase.game and num_pickups < max_pickups) {
	do {
		x = random(window_get_width() - 100) + 50;
		y = random(window_get_height() - 100) + 50;
	} until(place_empty(x, y));

	instance_create_layer(x, y, "Instances", choose(o_pickup_1, o_pickup_2, o_pickup_3, o_pickup_4))
	num_pickups++;
}

alarm[0] = 250;