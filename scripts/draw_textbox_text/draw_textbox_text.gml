// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_textbox_text(){
	
if str != "" || instant
{
	//variables pulled from object
	/*
	str: the literal string that's been pulled from the script, includes markup characters
	instant: flag to skip showing single characters at a time for this line
	x1 and y1: top left room coordinates for the text to start appearing at, calculated ahead of time to be within the textbox
	margin: distance from edge of textbox for text to appear within
	cuttoff: how many character from the end of the string to stop displaying characters
	timer: used with delay to count frames until the next letter will be shown
	modifier: markup flag for temporarily changing text font and style mid-line. In the script markup flags follow a "/"
	pause: a flag to have a much longer delay between characters to imply punctuation
	new_row: size of a row of text
	box_widt: total width of the textbox, used for when drawing the string after text scroll is complete for the line
	*/
	
	//draw the text
	//variables
	// adjust based on font used
	var charwidth = 13; //width of a single character, use a monospaced font
	var line_end  = 43; //number of characters that can fit in a single line
	var line = 0; //index for how many lines in the textbox the carrat is up to
	var space = 0;
	var i =1; //index for which col the carrat is simulated to be at
	var delay = 3; //frames between drawing the next character, small number = quicker text appearance

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
			alarm[0] = 15;
		}
		if string_char_at(str,i) == "." || string_char_at(str,i) == "?" || string_char_at(str,i) == "!"
		{
			pause=true;
			alarm[0]=30;
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

}

function draw_text_centered(xx,yy,str) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(xx,yy,str);
	draw_set_valign(-1);
	draw_set_halign(-1);
}