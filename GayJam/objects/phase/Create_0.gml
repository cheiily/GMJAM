
wait = "waiting for players";
game = "game";
countdown = "ready";
inter = "round_end";
finish = "finish";

previous = wait;
current = wait;


function set(_phase) {
	previous = current;
	current = _phase;
	o_game.update_phase();
}