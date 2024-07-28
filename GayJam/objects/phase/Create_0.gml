
wait = "waiting for players";
game = "game";
countdown = "ready";
inter = "round_end";
finish = "finish";

current = game;


function set(_phase) {
	current = _phase;
	o_game.update_phase();
}