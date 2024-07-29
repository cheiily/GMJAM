draw_text_ext_transformed_color(window_get_width()/2, 100, print, 20, 10000, 
	1, 1, 0, 
	pclr1, 
	pclr2, 
	pclr3, 
	pclr4,
	1
);

if (phase.current == phase.wait) {
	if (num_req == num_connected) {
		draw_text_ext_transformed(window_get_width()/2, 100, 
			string(num_connected) + "/" + string(num_req) + " Press START.",
			20, 10000,
			0.5, 0.5, 0
		)
	} else {
		draw_text_ext_transformed(window_get_width()/2, 100, 
			string(num_connected) + "/" + string(num_req) + " " + print_w,
			20, 10000,
			0.5, 0.5, 0
		)
	}
}
if (phase.current == phase.finish) {
	draw_text_ext_transformed(window_get_width()/2, 300, 
		"Press START to play again\nPress SELECT to exit",
		100, 10000,
		0.35, 0.4, 0
	)
}