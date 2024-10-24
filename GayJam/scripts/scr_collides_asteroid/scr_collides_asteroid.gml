// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_collides_asteroid(_x, _y){
	with (o_asteroid) {
		if (distance_to_point(_x, _y) <= sprite_width * 0.1)
			return true;
	}
	with (o_asteroid_2) {
		if (distance_to_point(_x, _y) <= sprite_width * 0.1)
			return true;
	}
	with (o_asteroid_3) {
		if (distance_to_point(_x, _y) <= sprite_width * 0.1)
			return true;
	}
	with (o_asteroid_4) {
		if (distance_to_point(_x, _y) <= sprite_width * 0.1)
			return true;
	}
	return false;
}