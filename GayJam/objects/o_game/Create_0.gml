function update_phase() {
	if (phase.current == phase.countdown) {
		alarm[0] = 10;	
	}
}

rollback_define_player(o_tank);

rollback_define_input({
	roth: gp_axislh,
	rotv: gp_axislv,
	shoot: gp_face1,
})

randomise()

if (!rollback_join_game()) {
	rollback_create_game(4, true);
	global.seed = random_get_seed();
	instance_create_layer(-10, -10, "Controllers", phase);
} else {
	random_set_seed(global.seed);
}

phase.set(phase.countdown);

countdown_print = "3";
