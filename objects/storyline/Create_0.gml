/// @description Insert description here
// You can write your code in this editor

progress = []; //the current scene the player has reached with a character
holding_dialog = []; //the string to display if the player has already made progress today
next_scene_unlocked = []; //flag for if the player can access the next scene for each actor

for (var i=0; i<actor.ariadne+1; i++)
{
	progress[i] = 0;
	next_scene_unlocked[i] = true;
	holding_dialog[i]="I'm a bit busy at the moment. Sorry can we talk later?";
}

//load from external files
_script = [];//the entier script
last_line = 20; //magic number, total number of lines in script

//open file
var scr = load_csv("script.csv")


quest_flags = [];//flags for multi step actions required to unlock the next scene



var file = load_csv("actor_desc.csv");
for (var k=0; k<5; k++) {
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
}

actor_locations = [];
/*
Time	Julie	Kat			Ariadne		Barry			Debug
Morning	Bedroom	Bathroom	Backyard	house inside	house inside
Day	Car Spot	Loungroom	Kitchen		house outside	house inside
A-noon	FntYrd	Backyard	Bathroom	house outside	house inside
Night	Bathroom	Bedroom	Guest Room	house inside	house outside
*/

/*
data requirements for script struct
string for line of dialog
flag for if it's not a question, a question with 2 answers or a question with 3 answers
flag for who's talking
index of expression/pose to change to
index of next line once this one is done
flag for line interrupt once text is completely written

*/