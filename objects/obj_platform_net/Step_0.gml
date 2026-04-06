event_inherited();

if (hspeed > 0) {
	if (bbox_right >= room_width - hspeed) hspeed *= -1;
} else {
	if (bbox_left <= -hspeed) hspeed *= -1;
}
	