/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod
instance_deactivate_object(o_pickup);
tank_id = other.id;
tank_id.bullet_type = o_projectile_2;
object_set_sprite(o_tank_head, s_tank_head_2);
alarm[0] = 10 * 60;

ammo_amount = 3;


