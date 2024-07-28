game = "game";
countdown = "ready";
inter = "round_end";
finish = "finish";

current = countdown;

function set(_phase) {
	current = _phase;
	o_game.update_phase();
}