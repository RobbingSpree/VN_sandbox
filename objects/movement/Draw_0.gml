/// @description Insert description here
// You can write your code in this editor

nine_slice_draw(image_index,x,y,x+sprite_width,y+sprite_height);
draw_set_color(c_black);
draw_text_centered(x+sprite_width/2,y+sprite_height/20,"Move");

//debug
/*
for (var i=0; i<loc.ariadne_house_in; i++) {
		if location & accessable[i]
			draw_set_color(c_black);
		else {
			draw_set_color(c_red);
		}
		draw_text(x+40,y+30+30*i,enum_to_string(i,"location"));
	}
*/
draw_set_color(c_white);

draw_text(20,20,enum_to_string(location,"location"));
