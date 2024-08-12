/// @description Blinking
// W tym edytorze możesz zapisać swój kod
if (blink_timer > 0) {
    blink_timer--;

    if (scope.image_alpha == 1) {
        scope.image_alpha = blink_alpha;
    } else {
        scope.image_alpha = 1;
    }
    
    alarm[1] = 0.2 * 60;
} else {
    alarm[2] = 0.2 * 60;
}



