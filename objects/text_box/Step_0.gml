/// @description check for input and act on it

if (mouse_within(x1,y1,x2,y2) && mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && !convo_end 
{
	if cutoff >= string_length(str)-1 && !question
	{
		if !storyline._script[text].scene_end {
			text = storyline._script[text].advance_to;
			cutoff =0; //number of characters to not draw at end of string if still animating text appearing
			instant = false; //reset flag so next line animates if this one was skipped
			str = load_next_text(text); //need to rewrite function to take location, scene from script, line index from scene
		} else {
			str = "";
			text = -1;
			cutoff =0;
			instant = false;
			load_interaction(false);
		}
	} else 
		cutoff = string_length(str);
}


//actor change
if actor_arrive && fade < 1
{
	fade+= 0.05;
	if fade == 1
		actor_arrive = false;
}
if actor_leave && fade > 0
{
	fade-= 0.05;
	if fade == 0
	{
		actor_leave = false;
	}
}