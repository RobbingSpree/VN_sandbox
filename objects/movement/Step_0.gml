location = global.scene;

if update_room_list {
	//make child buttons for the current location
	var lc = 2^location; //copy of the current location, do maths once rather than n times
	var count = 0;
	var unit = 60;
	var yy = y + 30;
	for (var i=0; i<=loc.barry_house_in; i++) {
		if lc & accessable[i] {
			var button = instance_create_layer(x+20,yy+unit*count,"higherInstances",obj_button);
			button.str = enum_to_string(i,"location");
			button.index = i;
			count++
		}
	}
	//move from off screen
	update_room_list = false;
} 

//slide in and out of frame
if x != dx {
	x = lerp(x,dx,0.1);
	if abs(x - dx) < 5
		x = dx;
} 
