if(phase.current != phase.game) {
	instance_destroy(o_pickup_1);
	instance_destroy(o_pickup_2);
	instance_destroy(o_pickup_3);
	instance_destroy(o_pickup_4);
	num_pickups = 0;
}
