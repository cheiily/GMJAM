var is_first = global.collision == undefined;

if (is_first) {
	global.collision = true;
	global.coll1 = self;
	global.coll1_pre_alive = is_alive;
	global.coll2 = other;
	global.coll2_pre_alive = other.is_alive;
}

if (global.coll1_pre_alive and global.coll2_pre_alive) {
	scr_tank_die(self);
} else {
	// ignore - one of the tanks is alive and so we go through it
}

if (not is_first)
	global.collision = undefined;