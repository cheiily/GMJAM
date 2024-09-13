if shrink = false {
	size +=.03
    if size >= 1.5{
		shrink = true;
    }
} else {
	size -=.03
    if size <= 1{
		shrink = false;
    }
}

image_xscale = size;
image_yscale = size;