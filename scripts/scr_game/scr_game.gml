#region Variables
global.sprite = spr_capi;
global.scores = 0;
global.high_score = global.scores;
#endregion

#region Functions
function draw_shadow_in_text(_x, _y, _string, _colour = c_white, _scale = 1) {
	draw_set_font(fnt_start_btn);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text_transformed(_x + 1, _y + 1, _string, _scale, _scale, 0);
	draw_set_alpha(0.5);
	draw_text_transformed(_x + 2, _y + 2, _string, _scale, _scale, 0);
	draw_set_alpha(1);
	draw_set_colour(_colour);
	draw_text_transformed(_x, _y, _string, _scale, _scale, 0);
	draw_set_colour(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}
#endregion