if (rollback_sync_on_frame()) {

global.spawn_points = [
    [380, 220],
    [740, 740],
    [1050, 480],
    [150, 900],
    [1660, 860],
	[1560, 180]
];

var o_nr = random_range(3,5);
var o_type = o_asteroid;

for (var i = 0; i < o_nr; i++) {
    var index = irandom(array_length(global.spawn_points) - 1);
    var spawn_x = global.spawn_points[index][0];
    var spawn_y = global.spawn_points[index][1];
	
	array_delete(global.spawn_points, index, 1);

    var new_instance = instance_create_layer(spawn_x, spawn_y, "Instances", o_type);

    new_instance.image_xscale = random_range(0.3, 1.4);
    new_instance.image_yscale = new_instance.image_xscale;

    new_instance.image_angle = irandom_range(0, 360);
    new_instance.image_speed = random_range(0.1, 1.0);
}

}