/// @description check for input and act on it

if (mouse_within(x1,y1,x2,y2) && mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && !convo_end 
{
	if cutoff >= string_length(str)-1 && !question
	{
		text ++;
		cutoff =0;
		instant = false;
		str = load_next_text(global.scene,talking,text);
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