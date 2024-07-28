if (rollback_sync_on_frame()) {

game = "game";
countdown = "ready";
inter = "round_end";
finish = "finish";

current = countdown;

}

function set(_phase) {
	if (rollback_sync_on_frame()) {
	
	current = _phase;
	o_game.update_phase();
	
	}
}