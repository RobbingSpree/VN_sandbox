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
		debug_house_in,
		ariadne_house_out,
		ariadne_house_in
	}
	
	if class == "Location" || class == "location" {
		switch (index) {
			case loc.nowhere:			return "???"; break;
			case loc.bedroom:			return "Your Bedroom"; break;
			case loc.kat_room:			return "Kat's Room"; break;
			case loc.julie_room:		return "Julie's Room"; break;
			case loc.guest_room:		return "Guest Room"; break;
			case loc.lounge_room:		return "Lounge Room"; break;
			case loc.kitchen:			return "Kitchen"; break;
			case loc.bathroom:			return "Bathroom"; break;
			case loc.front_yard:		return "Frount Yard"; break;
			case loc.back_yard:			return "Back Yard"; break;
			case loc.car_spot:			return "Car Spot"; break;
			case loc.barry_house_out:	return "Barry's House"; break;
			case loc.barry_house_in:	return "Inside"; break;
			case loc.debug_house_out:	return "Debug's House"; break;
			case loc.debug_house_in:	return "Inside"; break;
			case loc.ariadne_house_out:	return "Ariadne's House"; break;
			case loc.ariadne_house_in:	return "Inside"; break;
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


}
