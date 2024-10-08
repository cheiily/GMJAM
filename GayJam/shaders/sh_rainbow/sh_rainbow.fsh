varying vec2 v_vTexcoord;

uniform vec2 u_uv;
uniform float u_speed;
uniform float u_time;

vec3 hsv2rgb(vec3 c) 
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
	vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    float pos = ((v_vTexcoord.x - u_uv[0]) / (u_uv[1] - u_uv[0])
	+ (v_vTexcoord.y - u_uv[0]) / (u_uv[1] - u_uv[0])) * 0.70710678118;
    vec3 col = vec3((u_time * u_speed) + pos, 1.0, 1.0);
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
    gl_FragColor = vec4(hsv2rgb(col), alpha);
}