if (not is_alive or (other.parent == self and other.grace_timer < other.grace_max)) return;

scr_tank_die(self);