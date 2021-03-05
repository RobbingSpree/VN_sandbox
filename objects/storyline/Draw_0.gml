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
var str = _script[current_line].advance_to;

draw_text(30,90,str);