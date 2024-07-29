window_set_fullscreen(true)
randomise()
//instance_create_depth(-10, -10, "Controllers", o_asteroid_spawner);


audio_play_sound(snd_music, 1, true)
function update_phase() {
	if (phase.previous == phase.countdown) {
		print = "";
		alarm[0] = -1; alarm[1] = -1; alarm[2] = -1; alarm[3] = -1; alarm[4] = -1;
	}
	if (phase.previous == phase.inter and phase.current != phase.countdown) {
		alarm[5] = -1;
	}
	if (phase.current == phase.countdown) {
		print = "3";
		alarm[0] = 10;	
	}
	if (phase.current == phase.inter) {
		scr_reset_players();
		if (phase.previous == phase.finish) {
			pclr1 = c_white; pclr2 = c_white; pclr3 = c_white; pclr4 = c_white;
			with (o_tank) {
				is_outlier = false;
			}
			phase.set(phase.countdown);
		} else {
			alarm[5] = 100;
		}
	}
	
	with (o_projectile)
		instance_destroy();
}

randomise()
instance_create_layer(-10, -10, "Controllers", phase);
first_round = true;
pause = false;

num_req = 4;
num_connected = 0;
pad_ids = [];

print_w = "Waiting for Players...";
print = "";
pclr1 = c_white;
pclr2 = c_white;
pclr3 = c_white;
pclr4 = c_white;

draw_set_font(f_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
