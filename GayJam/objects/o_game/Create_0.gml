rollback_define_player(o_tank);

if (!rollback_join_game()) {
	rollback_create_game(2, false);
}
