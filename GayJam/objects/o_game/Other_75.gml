/// @description Gamepad connection TBD
// W tym edytorze możesz zapisać swój kod

evt_type = async_load[?"event_type"]

if (phase.current == phase.wait) {
	if (evt_type == "gamepad discovered") {
		pad_ids[num_connected] = async_load[?"pad_index"];
			
		player = instance_create_layer(0, 0, "Instances", o_tank);
		player.gamepad_id = async_load[?"pad_index"];
		player.player_id_ = num_connected;
		with (player) {
			event_user(0);
		}
		
		num_connected++;
		if (num_connected == num_req)
			phase.set(phase.countdown);
	}
} 
if (evt_type == "gamepad lost") {
	var j = -1;
	for (i = 0; i < num_connected; i++) {
		if (pad_ids[i] == async_load[?"pad_index"]) {
			j = i;
			break;
		}
	}
	if (j != -1) {
		array_delete(pad_ids, j, 1);
		num_connected--;
	}
		
	with (o_tank) {
		if (gamepad_id == async_load[?"pad_index"]) {
			instance_destroy(head);
			instance_destroy();
		}
	}
		
	phase.set(phase.wait);
}