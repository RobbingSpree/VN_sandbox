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

quest_flags = [];//flags for multi step actions required to unlock the next scene

var file = file_text_open_read(working_directory + "\script.txt.txt");

actor_locations = [];
/*
Time	Julie	Kat			Ariadne		Barry			Debug
Morning	Bedroom	Bathroom	Backyard	house inside	house inside
Day	Car Spot	Loungroom	Kitchen		house outside	house inside
A-noon	FntYrd	Backyard	Bathroom	house outside	house inside
Night	Bathroom	Bedroom	Guest Room	house inside	house outside
*/
