rotationspeed = 3.5;
shoot_cd_duration = 50;
shoot_cd = false;

x = random(500) + 50;
y = random(500) + 50;

head = instance_create_layer(x, y, "Turrets", o_tank_head);