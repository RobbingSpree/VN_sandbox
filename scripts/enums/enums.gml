function enum_to_string(index, class) {
	enum actor {
		no_one,
		me,
		barry,
		debug,
		julie,
		kat,
		ariadne
	}
	
	if class == "actor" || class == "Actor" {
		switch (index) {
			case actor.no_one: return "Noone"; break;
			case actor.me: return "Me"; break;
			case actor.barry: return "Barry"; break;
			case actor.debug: return "Debug"; break;
			case actor.julie: return "Julie"; break;
			case actor.kat: return "Kat"; break;
			case actor.ariadne: return "Ariadne"; break;
		}
	}

	enum loc {
		nowhere,
		bedroom,
		kat_room,
		julie_room,
		guest_room,
		lounge_room,
		kitchen,
		bathroom,
		front_yard,
		back_yard,
		car_spot,
		barry_house_out,
		barry_house_in,
		debug_house_out,
		debug_house_in
	}
	
	if class == "Location" || class == "location" {
		switch (index) {
			case loc.nowhere:			return "???";			break;
			case loc.bedroom:			return "Your Bedroom";	break;
			case loc.kat_room:			return "Kat's Room";	break;
			case loc.julie_room:		return "Julie's Room";	break;
			case loc.guest_room:		return "Guest Room";	break;
			case loc.lounge_room:		return "Lounge Room";	break;
			case loc.kitchen:			return "Kitchen";		break;
			case loc.bathroom:			return "Bathroom";		break;
			case loc.front_yard:		return "Frount Yard";	break;
			case loc.back_yard:			return "Back Yard";		break;
			case loc.car_spot:			return "Car Spot";		break;
			case loc.barry_house_out:	return "Barry's House"; break;
			case loc.barry_house_in:	return "Inside";		break;
			case loc.debug_house_out:	return "Debug's House"; break;
			case loc.debug_house_in:	return "Inside";		break;
		}
	}
	
	enum pose {
		neutral,
		excited,
		scared,
		nervous,
		angry,
		mysterious,
		dizzy
	}
	
	enum ch {
		normal,
		a,
		b,
		c
	} 
	
	enum time {
		morning,
		midday,
		afternoon,
		night,
		late_night,
		early_morning	
	}
	
	if class == "Time" || class == "time" {
		switch (index) {
			case time.morning:			return "Morning"; break;	
			case time.midday:			return "Midday"; break;	
			case time.afternoon:		return "Afternoon"; break;	
			case time.night:			return "Night"; break;	
			case time.late_night:		return "Late Night"; break;	
			case time.early_morning:	return "Early Morning"; break;	
		}

	}
}

function string_to_enum(str) { //turning csv versions of the move to the enum version to make them more readable
	switch (str) {
			case "???":				return loc.nowhere;			break;
			case "Your Bedroom":	return loc.bedroom;			break;
			case "Kat's Room":		return loc.kat_room;		break;
			case "Julie's Room":	return loc.julie_room;		break;
			case "Guest Room":		return loc.guest_room;		break;
			case "Lounge Room":		return loc.lounge_room;		break;
			case "Kitchen":			return loc.kitchen;			break;
			case "Bathroom":		return loc.bathroom;		break;
			case "Frount Yard":		return loc.front_yard;		break;
			case "Back Yard":		return loc.back_yard;		break;
			case "Car Spot":		return loc.car_spot;		break;
			case "Barry's House":	return loc.barry_house_out;	break;
			case "Barry's Inside":	return loc.barry_house_in;	break;
			case "Debug's House":	return loc.debug_house_out;	break;
			case "Debug's Inside":	return loc.debug_house_in;	break;
	}
}