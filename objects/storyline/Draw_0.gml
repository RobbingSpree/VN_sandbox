/// @description Insert description here
// You can write your code in this editor


if array_length(actors) > 1
for (var i=0; i<5; i++) {
	var doot = actors[i];
	draw_text(30,30+i*20,doot.namewa);
}