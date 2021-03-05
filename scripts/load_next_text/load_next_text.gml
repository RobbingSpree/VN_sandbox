function load_next_text(line) {
	var str = "";
	
	//str = enum_to_string(global.scene, "Location");
	
	str = storyline._script[line].str;
	storyline.current_line = line;

	return str;
}
