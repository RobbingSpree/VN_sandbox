function mouse_within(argument0, argument1, argument2, argument3) {
	var x1 = argument0;
	var y1 = argument1;
	var x2 = argument2;
	var y2 = argument3;

	if mouse_x > x1 && mouse_x < x2 && mouse_y >y1 && mouse_y < y2
		return true;
	else
		return false;


}
