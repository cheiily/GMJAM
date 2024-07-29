shader_set(sh_rainbow);
var uv = sprite_get_uvs(sprite_index, image_index);
shader_set_uniform_f(_uniUV, uv[0], uv[2]);
shader_set_uniform_f(_uniSpeed, _speed);
shader_set_uniform_f(_uniTime, _time);
draw_self();
shader_reset();