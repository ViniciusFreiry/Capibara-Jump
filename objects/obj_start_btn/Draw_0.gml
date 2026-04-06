draw_self();

var _scale = 1;

if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	if (mouse_check_button_released(mb_left)) room_goto(rm_game);
	
	_scale = 1.1;
}

draw_shadow_in_text(x, y, "Play", c_yellow, _scale);