draw_self();

if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
	if (mouse_check_button_released(mb_left)) room_goto(room_destiny);
	
	image_xscale = lerp(image_xscale, 1.2, 0.2);
	image_yscale = lerp(image_yscale, 1.4, 0.2);
	y = lerp(y, ystart - 6, 0.2);
} else {
	image_xscale = lerp(image_xscale, 1, 0.2);
	image_yscale = image_xscale;
	y = lerp(y, ystart, 0.2);
}