/// @description Insert description here
// You can write your code in this editor

var unit = 10;
if (mouse_within(x,y,x+sprite_width,y+sprite_height) && mouse_check_button_pressed(mb_left)) {
	if hidden {
		//make child buttons for the current location
		var lc = location; //copy of the current location. gonna do bitwise changes to the value so we can't edit the origional
		var count = 2;
		var yy = y + sprite_height+unit;
		for (var i=0; i<loc.ariadne_house_in; i++) {
			if lc & accessable[location] {
				var button = instance_create_layer(x+20,yy+unit*count,"Instances",obj_button);
				button.str = enum_to_string(i,"location");
				count++
			}
		}
		//move from off screen
		hidden = !hidden;
	} else {
		//move items off screen
		hidden = !hidden;
		//destroy child buttons
		with (obj_button) {
			instance_destroy(self);
		}
	}
}	