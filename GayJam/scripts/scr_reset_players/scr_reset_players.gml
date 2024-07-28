// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_reset_players(){
	with (o_tank) {
		is_alive = true;

		speed = 0;
		direction = 0;
		image_angle = 0;
		
		do {
			x = random(window_get_width() - 100) + 50;
			y = random(window_get_height() - 100) + 50;
		} until(place_empty(x, y, other));

		// head pos in o_tank_head::step

		image_alpha = 1
		head.image_alpha = 1
	}
}