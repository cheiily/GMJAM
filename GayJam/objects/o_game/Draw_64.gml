draw_text_ext_transformed_color(window_get_width()/2, window_get_height() / 2, print, 20, 10000, 
	1, 1, 0, 
	pclr1, 
	pclr2, 
	pclr3, 
	pclr4,
	1
);

if (phase.current == phase.wait) {
	draw_text_ext_transformed(window_get_width()/2, 100, 
		string(num_connected) + "/" + string(num_req) + " " + print_w,
		20, 10000,
		0.5, 0.5, 0
	)
}