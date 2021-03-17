/// @description Insert description here
// You can write your code in this editor

/*
//show values for actor decriptions
if array_length(actors) > 1
for (var i=0; i<5; i++) {
	var doot = actors[i];
	draw_text(30,30+i*20,doot.namewa);
}
*/

//show next line data
if current_line != -1 {
	var str = _script[current_line].scene_end;
	
	if str == true
		str = "last line";
	else
		str = "continue";
	
	draw_text(30,90,str);
	str = "next line: " + string(_script[current_line].advance_to);
	draw_text(30,110,str);
	str = "current line: " + string(current_line);
	draw_text(30,130,str);
}
