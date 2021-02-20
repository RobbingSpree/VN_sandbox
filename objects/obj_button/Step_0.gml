
if x != dx {
	x = lerp(x,dx,0.1);
	if abs(x - dx) < 5
		x = dx;
}