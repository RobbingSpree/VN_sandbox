// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function actor_deets() constructor{
	index = 0;
	namewa = "String";
	pronoun = "She/Her";
	body = "Square";
	phys_desc = "Covered in hair and posessing some number of fingers";
	likes = "Debug values, set responses, knowable constraints";
	dislikes = "Bugs, glitches, errors, catastrophic failures, scope creep";
	history = "Test value for actor struct";
	hugs = "Binary hugs";
}

function line() constructor{
	index				= 0;		//lookup index, may be redundent
	str					= "";		//line of dialog to load
	num_o_strings		= 1;		//number of strings required for line, extra strings kept in b_str and c_str
	b_str				= "";		//extra string for dialog choices
	c_str				= "";		//extra string for dialog choices
	backtrack_to		= -1;		//index to go to due to not meeting story flag
	advance_to			= index+1;	//next line to load after this is dismissed , assumed value is next index
	badvance_to			= -1;		//next line to load if this is a dialog choice and you pick b
	cadvance_to			= -1;		//next line to load if this is a dialog choice and you pick c
	speaking			= "you";	//name of character speaking
	emote_change_to		= -1;		//enum of emote to change to from actor's spritesheet
	story_flag			= -1;		//enum of actor who's story flag is advanced by this line of dialog
	character_bookmark	= -1;		//next line of dialog to pick up from when talking to this character next
	scene_end			= false;	//if this line is the end of a scene and to re-enable movement
	bg_change			= noone;	//change bg art if needed for scene
	move_to				= -1;		//move between areas as part of scene
	notes				= "";		//debug values and story notes, cane make visible from text_box
	
	static next = function() {
		//update story flags
		
		
		//check for move flag
		if move_to != -1 
			global.scene = move_to;
		//advance scene or end scene
		var i = storyline.current_line;
		if !scene_end 
			load_next_text();
		else {			
			//release move lock
				
			//clear textbox
				with text_box {
					convo_end = true;
					str = "";
					storyline.current_line= -1;
				}
			//bring up location interact menu
				load_interaction(false);
		}
		//bug check
		if i == storyline.current_line { //if using a debug string or have a rollback loop, force dialog forward
			storyline.current_line++;
			text_box.str = storyline._script[storyline.current_line].str;
		}
	}
	
	static load_next_text = function() {
		var target = -1;
		switch text_box.choice {
			case ch.a: target = advance_to; break;
			case ch.b: target = badvance_to; break;
			case ch.c: target = cadvance_to; break;
			default: target = advance_to;
		}
		if target != -1 {
			storyline.current_line=target;
			text_box.str = storyline._script[target].str;
		}
	}
}