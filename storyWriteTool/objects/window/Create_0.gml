/// @description Insert description here
// You can write your code in this editor

image_xscale = 12;
image_yscale = 7;
image_speed = 0;

text = instance_create_layer(x+20,y+40,"Instances_Upper",field);
text.parent = self;

focus = true;

fx1 = x;
fy1 = y;
fx2 = x + sprite_width;
fy2 = y + sprite_height;