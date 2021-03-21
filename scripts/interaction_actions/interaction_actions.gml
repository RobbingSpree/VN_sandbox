 function start_a_convo(){ //start talking to only person in room or bring up menu for choice of who to talk to
	//check if anyone is in this location
	var location = storyline.location;
	var flag = false;
	var second = [];
	for (var i=0; i<=actor.ariadne; i++) {
		if storyline.actor_locations[# i, storyline.time_o_day] == location {
			if flag == false
				flag = i;
			else if second == [] {
				second[0] = flag;
				second[1] = i;
				flag = 2;
			} else {
				second[flag] = i;
				flag ++
			}
		} 
	}
	if flag != false && second == []{ //only one character present
		//check if there's a queued convo with that character
		
		//start that convo
		
		//else load the busy text
		
	} else if flag != false && array_length(second) > 0 {  //several characters present in location
		//load the dialog start choice menu
		
	} else if flag == false {  //no character present
		//else load the no one is here text
	}
}

function look_at_room(){ //put room description text in textbox
	
	//load up room descript text
}

function use_a_thing(){ //show items that are usable
	
	//load menu of usable items
}

function show_debug_values(){ //puts some debug values into the textbox
	//fill string with debug data
	
	//pass string to text_box
}

function not_a_function() {}