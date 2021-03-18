	
function csv_to_dialog(_filename){
	//load file into grid
	if file_exists(_filename) //error check if script csv is misnamed or missing
		show_debug_message("script found");
	else 
		show_debug_message("script missing");
	var tabel = load_csv(_filename);
	//find size of grid
	var size = ds_grid_height(tabel);
	//itterate over grid
	for (var i=1; i<size; i++) {
		var l = new line();
		//show_debug_message(tabel[# 0, i]+ " point in question"); //show raw string value of targeted cell
		if (tabel[# 0, i]) != ""
			l.index					 = real(tabel[# 0, i]);
		if (tabel[# 1, i]) != ""
			l.str					 = tabel[# 1, i];
		if (tabel[# 2, i]) != ""
			l.num_o_strings			 = real(tabel[# 2, i]); //flag for if this is a question and how many answers to pull
		if (tabel[# 3, i]) != ""
			l.b_str					 = tabel[# 3, i]; //option two for a dialog choice
		if (tabel[# 4, i]) != ""
			l.c_str					 = tabel[# 4, i]; //option 3 in a dialog choice
		if (tabel[# 5, i]) != ""
			l.backtrack_to			 = real(tabel[# 5, i]); //index to roll back to if you fail the story flag check
		if (tabel[# 6, i]) != ""
			l.advance_to			 = real(tabel[# 6, i]); 
		if (tabel[# 7, i]) != ""
			l.badvance_to			 = real(tabel[# 7, i]);
		if (tabel[# 8, i]) != ""
			l.cadvance_to			 = real(tabel[# 8, i]);
		if (tabel[# 9, i]) != ""
			l.speaking				 = tabel[# 9, i];
		if (tabel[# 10, i]) != ""
			l.emote_change_to		 = real(tabel[# 10, i]);
		if (tabel[# 11, i]) != ""
			l.story_flag			 = tabel[# 11, i]; //returns a string so need to either translate this to an enum now or later
		if (tabel[# 12, i]) != ""
			l.character_bookmark	 = real(tabel[# 12, i]); 
		if (tabel[# 13, i]) == "TRUE"
			l.scene_end				 = true; //default value is false
		if (tabel[# 14, i]) != ""
			l.bg_change					 = tabel[# 14, i];
		if (tabel[# 15, i]) != ""
			l.move_to					 = string_to_enum(tabel[# 15, i]);
		if (tabel[# 16, i]) != ""
			l.notes					 = tabel[# 16, i];
		
		storyline._script[i-1] = l;
	}
	ds_grid_destroy(tabel);
}