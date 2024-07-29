instance_create_layer(x, y, "Instances", o_projectile_explosion, {image_blend : image_blend});
audio_play_sound(snd_projectile_hit, 1, false);
instance_destroy();
