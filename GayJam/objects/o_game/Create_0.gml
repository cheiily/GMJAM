function update_phase() {
	if (phase.current == phase.countdown) {
		alarm[0] = 10;	
	}
	if (phase.current == phase.inter) {
		scr_reset_players();
		phase.set(phase.countdown);
	}
	
	with (o_projectile)
		instance_destroy();
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

print = "3";
pclr1 = c_red;
pclr2 = c_blue;
pclr3 = c_yellow;
pclr4 = c_lime;

draw_set_font(f_arial);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);