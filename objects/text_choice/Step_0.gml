/// @description Insert description here
// You can write your code in this editor

if choice == "a"
	story_pointer = 1;
if choice == "b"
	story_pointer = 2;
if choice == "c"
	story_pointer = 3;
 //the string for a c option is imported by the question load function
	
if mouse_over(self) && mouse_check_button_released(mb_left)
{
	text_box.text += story_pointer;
	text_box.instant = false;
	text_box.question = false;
	load_next_text(global.scene,text_box.talking,text_box.text);
	//remove all question boxes
	with text_choice
	{
		instance_destroy(self);
	}
}