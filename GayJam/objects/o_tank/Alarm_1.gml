/// @description Blinking
// W tym edytorze możesz zapisać swój kod
if (blink_timer > 0) {
    blink_timer--;

    if (head.image_alpha == 1) {
        head.image_alpha = blink_alpha;
    } else {
        head.image_alpha = 1;
    }
    
    alarm[1] = 0.2 * 60;
} else {
    head.image_alpha = 1;
    alarm[2] = 0.2 * 60;
}



