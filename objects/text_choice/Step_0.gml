/// @description Insert description here
// You can write your code in this editor

if choice == "a"
	story_pointer = ch.a;
if choice == "b"
	story_pointer = ch.b;
if choice == "c"
	story_pointer = ch.c;
 //the string for a c option is imported by the question load function
	
if mouse_over(self) && mouse_check_button_released(mb_left)
{
	//text_box.text += story_pointer;
	text_box.instant = false;
	text_box.question = false;
	text_box.choice = story_pointer;
	storyline._script[text].next()
	//remove all question boxes
	with text_choice
	{
		instance_destroy(self);
	}
}