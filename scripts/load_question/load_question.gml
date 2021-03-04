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
		var a_ = instance_create_layer(text_box.pt3_a,text_box.quest_y,"higher_instances",text_choice);
		a_.choice = "a"; //identifies as choice a to instance
		a_.str = a_string;
		a_.story_pointer = a_pointer;
		var b_ = instance_create_layer(text_box.pt3_b,text_box.quest_y,"higher_instances",text_choice);
		b_.choice = "b"; //identifies as choice b to instance
		b_.str = b_string;
		b_.story_pointer = b_pointer;
		var c_ = instance_create_layer(text_box.pt3_c,text_box.quest_y,"higher_instances",text_choice);
		c_.choice = "c"; //identifies as choice c to instance
		c_.str = c_string;
		c_.story_pointer = c_pointer;
	
	} else {
		var a_ = instance_create_layer(text_box.pt2_a,text_box.quest_y,"higher_instances",text_choice);
		a_.choice = "a";
		a_.str = a_string;
		a_.story_pointer = a_pointer;
		var b_ = instance_create_layer(text_box.pt2_b,text_box.quest_y,"higher_instances",text_choice);
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
		var a_ = instance_create_layer(text_box.pt3_a,text_box.quest_y,"higher_instances",interact_button);
		a_.choice = "Talk"; //identifies as the talk menu
		a_.str = a_string;
		a_.story_pointer = a_pointer;
		var b_ = instance_create_layer(text_box.pt3_b,text_box.quest_y,"higher_instances",interact_button);
		b_.choice = "Investigate"; //identifies as the investigate flag
		b_.str = b_string;
		b_.story_pointer = b_pointer;
		var c_ = instance_create_layer(text_box.pt3_c,text_box.quest_y,"higher_instances",interact_button);
		c_.choice = "Debug"; //no set use for choice c
		c_.str = c_string;
		c_.story_pointer = c_pointer;
	
	} else {
		var a_ = instance_create_layer(text_box.pt2_a,text_box.quest_y,"higher_instances",interact_button);
		var b_ = instance_create_layer(text_box.pt2_b,text_box.quest_y,"higher_instances",interact_button);
	}
}