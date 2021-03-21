function load_question(line, third) {

	var a_pointer = 0; //line in dialouge scene to jump to after selecting this option
	var b_pointer = 0;
	var c_pointer = 0;
	var a_string = "Who?";
	var b_string = "What?";
	var c_string = "Where?";

	//text_box.str = "I think they're expecting a response." //replace with a smaller popup textbox
	text_box.instant = true;
	text_box.question = true;

	if third
	{
		var a_ = instance_create_layer(pt3_a,quest_y,"higherInstances",text_choice);
		a_.choice = "a"; //identifies as choice a to instance
		a_.str = a_string;
		a_.story_pointer = a_pointer;
		var b_ = instance_create_layer(pt3_b,quest_y,"higherInstances",text_choice);
		b_.choice = "b"; //identifies as choice b to instance
		b_.str = b_string;
		b_.story_pointer = b_pointer;
		var c_ = instance_create_layer(pt3_c,quest_y,"higherInstances",text_choice);
		c_.choice = "c"; //identifies as choice c to instance
		c_.str = c_string;
		c_.story_pointer = c_pointer;
	
	} else {
		var a_ = instance_create_layer(pt2_a,quest_y,"higherInstances",text_choice);
		a_.choice = "a";
		a_.str = a_string;
		a_.story_pointer = a_pointer;
		var b_ = instance_create_layer(pt2_b,quest_y,"higherInstances",text_choice);
		b_.choice = "b";
		b_.str = b_string;
		b_.story_pointer = b_pointer;
	}


}

function load_interaction(third) {

	//text_box.str = "I think they're expecting a response." //replace with a smaller popup textbox
	text_box.instant = true;
	text_box.question = true;

	if third
	{
		var a_ = instance_create_layer(pt3_a,quest_y,"higherInstances",interact_button);
		a_.choice = "Talk"; //identifies as the talk menu
		var b_ = instance_create_layer(pt3_b,quest_y,"higherInstances",interact_button);
		b_.choice = "Look"; //identifies as the investigate flag
		var c_ = instance_create_layer(pt3_c,quest_y,"higherInstances",interact_button);
		c_.choice = "Use"; //no set use for choice c
	
	} else {
		var a_ = instance_create_layer(pt2_a,quest_y,"higherInstances",interact_button);
		a_.choice = "Talk";
		var b_ = instance_create_layer(pt2_b,quest_y,"higherInstances",interact_button);
		b_.choice = "Look";
	}
}