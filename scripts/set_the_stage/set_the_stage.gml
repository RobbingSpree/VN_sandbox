/*
Time	Julie	Kat			Ariadne		Barry			Debug
Morning	Bedroom	Bathroom	Backyard	house inside	house inside
Day	Car Spot	Loungroom	Kitchen		house outside	house inside
A-noon	FntYrd	Backyard	Bathroom	house outside	house inside
Night	Bathroom	Bedroom	Guest Room	house inside	house outside
*/

function set_the_stage(flag){
	var staging = ds_grid_create(actor.ariadne,time.early_morning);
	
	//set everyone as nowhere for time.early_morning and time.late_night
	//those two times exist for narrative convenience rather than scheduling reasons
	for (var i=0; i<=actor.ariadne; i++) {
		staging[# i,time.late_night] = loc.nowhere;
		staging[# i,time.early_morning]= loc.nowhere;
	}
	
	//load rest of time table
	//doesn't matter the order actors are loaded into the tabel cause the size is pre-set as long as you remember to include all actors
	if flag == 0 || flag > 0 { //this flag is for if you want major plot points to change where actors are, or if you want their location to be random or based on a weekly cycle
		var target = actor.no_one;
		staging[# target, time.morning]		= loc.nowhere;
		staging[# target, time.midday]		= loc.nowhere;
		staging[# target, time.afternoon]	= loc.nowhere;
		staging[# target, time.night]		= loc.nowhere;
		target = actor.me;
		staging[# target, time.morning]		= loc.nowhere;
		staging[# target, time.midday]		= loc.nowhere;
		staging[# target, time.afternoon]	= loc.nowhere;
		staging[# target, time.night]		= loc.nowhere;
		target = actor.julie;
		staging[# target, time.morning]		= loc.julie_room;
		staging[# target, time.midday]		= loc.car_spot;
		staging[# target, time.afternoon]	= loc.front_yard;
		staging[# target, time.night]		= loc.bathroom;
		target = actor.debug;
		staging[# target, time.morning]		= loc.debug_house_in;
		staging[# target, time.midday]		= loc.debug_house_in;
		staging[# target, time.afternoon]	= loc.debug_house_in;
		staging[# target, time.night]		= loc.debug_house_out;
		target = actor.kat;
		staging[# target, time.morning]		= loc.bathroom;
		staging[# target, time.midday]		= loc.lounge_room;
		staging[# target, time.afternoon]	= loc.back_yard;
		staging[# target, time.night]		= loc.kat_room;
		target = actor.barry;
		staging[# target, time.morning]		= loc.barry_house_in;
		staging[# target, time.midday]		= loc.barry_house_out;
		staging[# target, time.afternoon]	= loc.barry_house_out;
		staging[# target, time.night]		= loc.barry_house_in;
		target = actor.ariadne;
		staging[# target, time.morning]		= loc.back_yard;
		staging[# target, time.midday]		= loc.kitchen;
		staging[# target, time.afternoon]	= loc.bathroom;
		staging[# target, time.night]		= loc.guest_room;
	}
	
	if flag == -1 { //everyone goes to random locations in your house
		for (var i=0; i<=actor.ariadne; i++) 
			for (var k=0; k<=time.night; k++) {
				staging[# i,k] = irandom_range(loc.bedroom,loc.car_spot);
			}
	}
	return staging;
}