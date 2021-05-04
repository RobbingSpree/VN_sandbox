/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) {
	flag = false;
	with (window) {
		if mouse_over(fx1,fy1,fx2,fy2) {
			mouse_watcher.flag = true;
		}
	}
	if flag == false  {
		with (window)
			mouse_watcher.focus = false;
	}
}