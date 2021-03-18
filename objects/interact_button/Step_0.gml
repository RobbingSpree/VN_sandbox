
if choice == "Talk"
	action = start_a_convo;
if choice == "Look"
	action = look_at_room;
if choice == "Use"
	action = use_a_thing;
if choice == "Debug"
	action = show_debug_values;
	
if mouse_over(self) && mouse_check_button_released(mb_left)
{
	//run stored action
	action();
	//remove all question boxes
	with interact_button
	{
		instance_destroy(self);
	}
}