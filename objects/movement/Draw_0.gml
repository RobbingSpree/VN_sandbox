
//draw button on left side of screen
draw_self();
draw_set_color(c_black);
draw_text_centered(x+sprite_width/2,y+sprite_height/20,"Move");

//debug
/*
//show all travek 
for (var i=0; i<loc.ariadne_house_in; i++) {
		if location & accessable[i]
			draw_set_color(c_black);
		else {
			draw_set_color(c_red);
		}
		draw_text(x+40,y+30+30*i,enum_to_string(i,"location"));
	}
*/

//draw location indicator in top right of screen
var loc_str = enum_to_string(location,"location");
nine_slice_draw(txt_box_spr5,10,10,10+string_width(loc_str)+20,10+string_height(loc_str)+20);
draw_text(20,20,enum_to_string(location,"location"));
draw_set_color(c_white);