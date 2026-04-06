if (y > camera_get_view_y(view_camera[0]) + 400) {
	instance_create_layer(0, ystart - 448, layer, choose_random_plat()).randomise_me();
	
	instance_destroy(id, false);
}