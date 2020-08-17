//draw actor
if talking < actor.no_one
{
	draw_sprite_ext(character_closeups,talking,0,0,0.5,0.5,0,c_white,fade);
}
draw_set_color(c_red);
//draw_text(20,20,talking);
draw_set_color(c_white);
//draw textbox

nine_slice_draw(txt_box_spr,x1,y1,x2,y2);
draw_set_color(c_black);
draw_set_halign(fa_left);
if str != "" || instant
{
	//draw the text
	//variables
	var charwidth = 13;
	var line_end  = 43;
	var line = 0;
	var space = 0;
	var i =1;
	var delay = 3;

	//text position
	tx = x1+margin;
	ty = y1+margin;

	//countdown to next letter
	if cutoff < string_length(str)
	{
		if timer >= delay
		{
			cutoff ++
			timer = 0;
		}
		else timer ++
	}

	//draw the text
	while( i<= string_length(str) && i <= cutoff)
	{
		//check for modifier
		if string_char_at(str,i) =="/"
		{
			modifier = real(string_char_at(str,i+1))
			i++
			i++
		}
		//check for punctuation
		if string_char_at(str,i) == ","
		{
			pause=true;
			alarm(0)=15;
		}
		if string_char_at(str,i) == "." || string_char_at(str,i) == "?" || string_char_at(str,i) == "!"
		{
			pause=true;
			alarm(0)=30;
		}
	
		//goto next line
		var length =0;
		while (string_char_at(str,i) != " " && i<= string_length(str))
		{
			i++
			length++
		}
		if space+length >line_end
		{
			space = 0;
			line++
		}
		i-=length;
	
		//draw the text
		//apply modifiers
		switch modifier
		{
			case 0: //normal
			{
				draw_set_color(c_black);
				draw_set_font(defont);
				draw_text(tx+(space*charwidth), ty+(new_row*line), string_char_at(str,i));
				break;
			}
			case 1: //shakey
			{
				draw_set_color(c_black);
				draw_text(tx+(space*charwidth)+random_range(-1,1), ty+(new_row*line)+random_range(-1,1), string_char_at(str,i));
				break;
			}
			case 2: //red
			{
				draw_set_color(c_red);
				draw_text(tx+(space*charwidth), ty+(new_row*line), string_char_at(str,i));
				break;
			}
		}
	
	
	
		space++
		i++
	}
} else draw_text_ext(x1+margin,y1+margin,str,new_row,box_wid);


draw_set_color(c_white);
draw_set_font(-1);