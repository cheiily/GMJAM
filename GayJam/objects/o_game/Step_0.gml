if (keyboard_check_released(vk_escape)) {
	if (not pause) {
		pause = true;
		instance_deactivate_all(true);
	} else {
		pause = false;
		instance_activate_all();
	}
}
if (keyboard_check(vk_f1))
	game_end();
	
if (phase.current == phase.wait) {
	if (keyboard_check_released(ord("W")))
		num_req++;
	if (keyboard_check_released(ord("S")))
		num_req--;
}

has_outlier = false;
outlier = undefined;
num_dead = 0;
survivor = undefined;


with(o_tank) {
	if (not is_alive) {
		other.num_dead++;
	} else {
		other.survivor = self;
	}
	
	if (is_outlier) {
		other.has_outlier = true;
		other.outlier = self;
	}
}

if (num_dead == num_req - 1 and phase.current == phase.game) {
	if (has_outlier and outlier == survivor) {
		show_debug_message("dead" + string(num_dead) + " out? " + string(has_outlier) + " who " + string(outlier));
		print = string_upper(survivor.color_str) + " WINS";
		pclr1 = survivor.color; pclr2 = survivor.color; pclr3 = survivor.color; pclr4 = survivor.color;
		phase.set(phase.finish);
	} else {
		show_debug_message("dead" + string(num_dead) + " out? " + string(has_outlier) + " who " + string(outlier));
		print = string_upper(survivor.color_str) + " IS THE OUTLIER";
		pclr1 = survivor.color; pclr2 = survivor.color; pclr3 = survivor.color; pclr4 = survivor.color;
		if (has_outlier and outlier != undefined)
			outlier.is_outlier = false;
		survivor.is_outlier = true;
		outlier = survivor;
		phase.set(phase.inter);
	}
} else if (num_dead == num_req and phase.current == phase.game) {
	print = "DRAW";
	pclr1 = c_red; pclr2 = c_blue; pclr3 = c_yellow; pclr4 = c_lime;
	phase.set(phase.inter);
}

