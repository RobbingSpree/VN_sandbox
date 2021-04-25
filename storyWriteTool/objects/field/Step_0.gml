/// @description Insert description here
// You can write your code in this editor

if focus && parent.focus {
	pre_str += keyboard_string;

	if ldelay > 0
		ldelay--;

	if rdelay > 0
		rdelay--;

	if keyboard_check_pressed(vk_left) {
		//get last character from pre_str and attach it to front of post_str
		var len = string_length(pre_str);
		var char = string_char_at(pre_str,len);
		post_str = char + post_str;
		pre_str = string_delete(pre_str,len,1);
	}

	if keyboard_check_pressed(vk_backspace) {
		pre_str = string_delete(pre_str,string_length(pre_str),1);
	}


	if keyboard_check_pressed(vk_right) {
		//get first character from post_str and concat to back of pre_str
		var len = 1;
		var char = string_char_at(post_str,len);
		pre_str = pre_str + char;
		post_str = string_delete(post_str,len,1);
	}
	var combined = pre_str + cursor + post_str;
	str_wid = string_width(combined);
	str_hei = string_height_ext(combined,line_hei,max_wid);

	keyboard_string = "";
}

if mouse_over(fx1,fy1,fx2,fy2) {
	var line = round((mouse_y - y)/20);
	var col = round((mouse_x - x)/char_wid);
	if mouse_check_button_released(mb_left) {
		pre_str += post_str;
		post_str = "";
		var len = string_length(pre_str)-col+1
		post_str = string_copy(pre_str,col,len);
		pre_str = string_delete(pre_str,col,len);
	}
}
