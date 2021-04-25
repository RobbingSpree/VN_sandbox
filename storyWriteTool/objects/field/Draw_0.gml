/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_blue);
draw_rectangle(fx1,fy1,fx2,fy2,false);
draw_set_color(c_white);

//debug
draw_set_color(c_red);
draw_text(x-20,y-20,"width: "+string(str_wid));
draw_text(x-20,y-40,"height: "+string(str_hei));
draw_set_color(c_red);

var str = pre_str+cursor+post_str;
draw_text_ext(x,y,str,line_hei,max_wid);