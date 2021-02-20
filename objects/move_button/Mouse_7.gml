/// @description Insert description here
// You can write your code in this editor

hide = false;
	
if hide == false
{
	with (obj_button)
		instance_destroy(self);
	with (movement) {
		//make child buttons for the current location
		var count = 0;
		var unit = 60;
		var yy = y + 40;
		var locat = accessable[location];
		for (var i=0; i<=loc.ariadne_house_in; i++) {
			if power(2,i) & accessable[location] {
				var button = instance_create_layer(x+20,yy+unit*count,"higherInstances",obj_button);
				button.str = enum_to_string(i,"location");
				button.index = i;
				count++
			}
		}
	}
	//reveal menu
	movement.dx = x-movement.sprite_width+sprite_width-20; //magic number due to sprite width not being the visual width of sprite
	with obj_button {
		dx = movement.dx+7;
	}
	dx = x + sprite_width*2;
	
} 