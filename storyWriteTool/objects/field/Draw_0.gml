/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_blue);
draw_rectangle(fx1,fy1,fx2,fy2,false);
draw_set_color(c_white);

//debug
draw_set_color(c_red);
draw_text(x-100,y-20,"width: "+string(str_wid));
draw_text(x-100,y-40,"height: "+string(str_hei));
draw_text(x-100,y-60,"line: "+string(round((mouse_y - y)/20)));
if str_hei > char_hei {
	for(var b=0; b<lines-1; b++) {
		var x1 = x+line_breaks[b]*char_wid;
		var x2 = x+line_breaks[b]*(char_wid*2);
		var y1 = y+char_hei*b;
		var y2 = y+char_hei*b+char_hei;
		
		draw_rectangle(x1,y1,x2,y2,false)
	}
}

draw_set_color(c_white);

var str = pre_str+cursor+post_str;
draw_text_ext(x,y,str,line_hei,max_wid);