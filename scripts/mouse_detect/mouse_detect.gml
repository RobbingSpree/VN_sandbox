function mouse_over(target) {

	if mouse_x > target.x && mouse_x < target.x+target.sprite_width && mouse_y >target.y && mouse_y < target.y+target.sprite_height
		return true;
	else
		return false;

}

function mouse_within(x1, y1, x2, y2) {

if mouse_x > x1 && mouse_x < x2 && mouse_y >y1 && mouse_y < y2
		return true;
	else
		return false;

}
