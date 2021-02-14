function load_next_text(location, actor, scene, line) {
	var str = "";
	
	str = enum_to_string(location, "Location");
	str += " Debug" + string(line);
	//str += string(line);

	return str;
}
