jump = false;
width = bbox_right - bbox_left;

choose_random_plat = function() {
	return choose(obj_platform_log, obj_platform_net, obj_platform_leaf);
}

randomise_me = function() {
	x = random_range(0, room_width - width);
	
	if (random(100) <= 25) {
		instance_create_layer(x, y, layer, obj_acai).owner = id;
	}
}

if (random_start) {
	instance_create_layer(x, y, layer, choose_random_plat()).randomise_me();
	instance_destroy(id, false);
}