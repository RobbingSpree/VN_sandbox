function load_next_text(line) {
	var str = "";
	
	str = enum_to_string(global.scene, "Location");
	str += " Debug" + string(line);
	//str += string(line);

	return str;
}
