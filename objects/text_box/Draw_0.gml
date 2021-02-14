//draw actor
if talking < actor.no_one
{
	draw_sprite_ext(talking,talking,0,0,0.5,0.5,0,c_white,fade);
}
draw_set_color(c_red);
draw_text(20,20,enum_to_string(talking, "actor"));
draw_set_color(c_white);

//draw textbox

nine_slice_draw(txt_box_spr,x1,y1,x2,y2);
draw_set_color(c_black);
draw_set_halign(fa_left);

draw_textbox_text();

draw_set_color(c_white);
draw_set_font(-1);