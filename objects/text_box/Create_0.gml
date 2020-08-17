/// @description Setup textbox

x1=room_width/5; //left edge of textbox
y1=y; //top edge of textbox
x2=room_width/5*4; //right edge of textbox
y2=y+200; //bottom edge of textbox
x=x1; //jump to position
y=y1; //jump to poition

//textbox variables
str = "Press Space or Left Click this box to advance."; //string displayed in textbox
draw_set_font(defont); //current font
modifier = 0;
margin = 30; //gap kept between text and edge of textbox in px
new_row = 30; //gap between rows of text inside textbox
cutoff = 0; //characters beteen current character and end of line
timer = 0; //time in frames until next character is displayed
instant = true; //flag for if the timer needs to be skipped and the whole string is displayed at once
box_wid = x2-x1 - margin*2; //maths placeholder to make other code look nice
pause = false;

//dialouge UI variables
global.scene = loc.bedroom; //initialization of current scene location
text = 0; //which index of the current conversation we're currently displaying
question = false; //if the current line of dialoug is a question
convo_end = false; //if the conversation has ended 
talking = actor.no_one; //which sprite to show as the talking actor
//add second talking person, possible a 3rd to allow for larger scenes
fade = 0; //used in a transition function
actor_arrive = false; //flag to handle an actor being added to the conversation
actor_leave = false;  //flag to handle an actor leaving the scene

//question object positions
//positions are arbitrary and looked nice
quest_y = y1-50-130; 
pt3_a = x1+30;
pt3_b = pt3_a+210;
pt3_c = pt3_b+210;
pt2_a = x1+50;
pt2_b = pt2_a+350;

//sound
//toggled off due to no sounds
//audio_play_sound(walking_about_final,1,true);