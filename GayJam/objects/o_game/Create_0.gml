
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

phase.set(phase.countdown);

print = "3";
pclr1 = c_red;
pclr2 = c_blue;
pclr3 = c_yellow;
pclr4 = c_lime;

draw_set_font(f_arial);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (i = 0; i < 4; i++) {
	player = instance_create_layer(0, 0, "Instances", o_tank);
	player.gamepad_id = i;
	with (player) {
		event_user(0);
	}
}