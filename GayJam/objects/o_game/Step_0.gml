
has_outlier = true;
outlier = undefined;
all_dead = true;
common_all_dead = true;


with(o_tank) {
	if (is_alive) {
		other.all_dead &= false;
		if (is_outlier) {
			other.has_outlier = true;
			other.outlier = self;
		} else {
			other.common_all_dead &= false;
		}
	}
}

show_debug_message(all_dead)