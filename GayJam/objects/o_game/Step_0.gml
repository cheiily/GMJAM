
has_outlier = true;
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



