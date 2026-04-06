audio_stop_all();
audio_play_sound(choose(snd_bip_bop, snd_effervesce, snd_lights_out, snd_mountain_trials, snd_running), 10, true, 0.25);

global.scores = 0;
sprite_index = global.sprite;

half_width = bbox_right - bbox_left;
hspd = 1.5;
jump_force = -9;
cam_y = y;
vspeed = -1.5;
gravity = 0.3;

#region Functions
player_move = function() {
	if (keyboard_check(ord("A")) or keyboard_check(vk_left)) {
		x -= hspd;
	}
	
	if (keyboard_check(ord("D")) or keyboard_check(vk_right)) {
		x += hspd;
	}
	
	if (bbox_left > room_width) x -= room_width + half_width;
	else if (bbox_right < 0) x += room_width + half_width;
}

jump = function() {
	if (vspeed >= 0) {
		audio_play_sound(sfx_jump, 0, false, 0.25, 0, random_range(0.3, 0.5));
		instance_create_layer(x, y, layer, obj_player_vfx);
	
		vspeed = jump_force;
	}
}

earn_score = function(_score = 1) {
	global.scores += _score;
}

camera_controll = function() {
	if (cam_y > y) cam_y = y;
	
	camera_set_view_pos(view_camera[0], 0, cam_y - 160);
	
	if (y > camera_get_view_y(view_camera[0]) + 380) game_restart();
	
	if (global.high_score < global.scores) global.high_score = global.scores;
}
#endregion