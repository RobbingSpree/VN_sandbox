/// @description Insert description here
// You can write your code in this editor
pre_str = "";
post_str = "";
cursor = "|";
delay = 10;
ldelay = delay;
rdelay = delay;

focus = true;
parent = noone;

c_spd = 30;
alarm[0] = c_spd;

str_wid = 0;
str_hei = 0;
max_wid = 256
line_hei = 20;
lines = 0;
line_breaks = [];

fx1 = x;
fy1 = y;
fx2 = x + max_wid;
fy2 = y + 128;

cursor_mouse_x = 0;
cursor_mouse_y = 0;

char_wid = string_width("A");
char_hei = string_height("A");