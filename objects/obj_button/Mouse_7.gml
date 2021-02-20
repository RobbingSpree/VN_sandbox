global.scene = index;
move_button.hide = true;

move_button.dx = move_button.return_point;
	movement.dx += movement.sprite_width*2;
	with obj_button {
		dx = movement.dx+7;
	}