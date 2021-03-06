/// @description Insert description here
// You can write your code in this editor

progress = []; //the current scene the player has reached with a character
holding_dialog = []; //the string to display if the player has already made progress today
next_scene_unlocked = []; //flag for if the player can access the next scene for each actor

for (var i=0; i<actor.ariadne+1; i++)
{
	progress[i] = 0; //if loading game need to load these values from save file
	next_scene_unlocked[i] = true;
	holding_dialog[i]="I'm a bit busy at the moment. Sorry can we talk later?";
}

//load from external files
_script = [];//the entier script
last_line = 20; //magic number, total number of lines in script, can get from height of the csv import but it can have weird extra values
current_line = 1;
//import script into game
csv_to_dialog("VN_Script.csv");

threads = [];//flags for what part player is up to on all the different plot threads and stroybeats
for (var i=0; i<=storybeat.ariadne_main; i++) { //replace the 
	threads[i] = 0;
}
time_o_day = time.morning;

actors = [];
var file = load_csv("actor_desc.csv");
for (var k=1; k<6; k++) {
	var act = new actor_deets();
	act.index =		file[# 0,k];
	act.namewa  =	file[# 1,k];
	act.pronoun =	file[# 2,k];
	act.body =		file[# 3,k];
	act.phys_desc = file[# 4,k];
	act.likes =		file[# 5,k];
	act.dislikes =	file[# 6,k];
	act.history =	file[# 7,k];
	act.hugs =		file[# 8,k];
	actors[k] = act;
}

//pour in the actor locations
actor_locations = set_the_stage(0);

/*
actors enum
no_one,
me,
barry,
debug,
julie,
kat,
ariadne

