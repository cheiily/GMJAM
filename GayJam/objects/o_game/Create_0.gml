
randomise()
//instance_create_depth(-10, -10, "Controllers", o_asteroid_spawner);


audio_play_sound(music, 1, true)
function update_phase() {
	if (phase.current == phase.countdown) {
		alarm[0] = 10;	
	}
	if (phase.current == phase.inter) {
		scr_reset_players();
		alarm[5] = 100;
	}
	
	with (o_projectile)
		instance_destroy();
}

randomise()
instance_create_layer(-10, -10, "Controllers", phase);
pause = false;

num_req = 4;
num_connected = 0;
pad_ids = [];
//for (i = 0; i < gamepad_get_device_count(); i++) {
//	if (gamepad_is_connected(i)) {
//		pad_ids[num_connected] = i; // start @ 0
//		num_connected++;
//	}
//}

print_w = "Waiting for Players...";
print = "3";
pclr1 = c_red;
pclr2 = c_blue;
pclr3 = c_yellow;
pclr4 = c_lime;

draw_set_font(f_arial);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// async event handles this as gamepad_discovered is fired for each gamepad on game start
//for (i = 0; i < num_connected; i++) {
//	player = instance_create_layer(0, 0, "Instances", o_tank);
//	player.gamepad_id = pad_ids[i];
//	with (player) {
//		event_user(0);
//	}
//}

//if (num_connected == num_req)
//	phase.set(phase.countdown);