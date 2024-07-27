rollback_define_player(o_tank);

rollback_define_input({
	roth: gp_axislh,
	rotv: gp_axislv,
	shoot: gp_face1
})

if (!rollback_join_game()) {
	rollback_create_game(2, true);
}
