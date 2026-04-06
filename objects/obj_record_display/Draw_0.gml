draw_self();

actual_score = lerp(actual_score, global.high_score, 0.1);

var _score = round(actual_score);
var _colour = c_red;

if (_score != score_change) {
	score_change = _score;
	audio_play_sound(sfx_bip, 0, false, 0.25);
}

if (score_change < global.high_score * 0.75) {
	_colour = c_red;
} else if (score_change != global.high_score) {
	_colour = c_yellow;
} else {
	_colour = c_lime;
}

draw_shadow_in_text(x, y - 20, "Highest", c_orange);
draw_shadow_in_text(x, y, "Score", c_orange);
draw_shadow_in_text(x, y + 20, score_change, _colour);