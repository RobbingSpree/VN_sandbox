	
function csv_to_dialog(_filename){
	//load file into grid
	var tabel = load_csv(_filename);
	//find size of grid
	var size = ds_grid_height(tabel);
	//itterate over grid
	for (var i=0; i<size; i++) {
		var l = new line();
		l.index					 = real(tabel[# 0, i]);
		l.str					 = tabel[# 1, i];
		l.num_o_strings			 = real(tabel[# 2, i]);
		l.b_str					 = tabel[# 3, i];
		l.c_str					 = tabel[# 4, i];
		l.backtrack_to			 = tabel[# 5, i];
		l.advance_to			 = real(tabel[# 6, i]);
		l.badvance_to			 = real(tabel[# 7, i]);
		l.cadvance_to			 = real(tabel[# 8, i]);
		l.speaking				 = tabel[# 9, i];
		l.emote_change_to		 = real(tabel[# 10, i]);
		l.story_flag			 = real(tabel[# 11, i]);
		l.character_bookmark	 = real(tabel[# 12, i]);
		l.scene_end				 = real(tabel[# 13, i]);
		l.notes					 = tabel[# 14, i];
		storyline._script[i] = l;
	}
	ds_grid_destroy(tabel);
}