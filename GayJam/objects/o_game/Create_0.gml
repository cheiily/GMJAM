rollback_define_player(o_tank);

rollback_define_input({
	roth: gp_axislh,
	rotv: gp_axislv,
	shoot: gp_face1,
})

randomise()
//instance_create_depth(-10, -10, "Controllers", o_asteroid_spawner);

if (!rollback_join_game()) {
	rollback_create_game(4, true);
	//global.seed = random_get_seed();
} else {
	//random_set_seed(global.seed);
}

audio_play_sound(music, 1, true)

function update_phase() {
	if (rollback_sync_on_frame()) {
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
}

