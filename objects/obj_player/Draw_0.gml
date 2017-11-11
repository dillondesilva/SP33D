/// @description Draw Player or Next Level Button
// You can write your code in this editor

// Checking whether to change player into a next level button on collision with flag
if (hit_flag != true) {
	draw_self();
} else {
	draw_set_colour(c_yellow);
	draw_button(410, 250, 600, 300, !mouse_check_button(mb_left));
	draw_set_colour(c_black);
	createStatusText("Next Level", 433, 260, 1.5);
	if (mouse_check_button(mb_left)) {
		room_goto_next();
	}
}

if (global.game_over == true) {
	draw_set_colour(c_yellow);
	draw_button(410, 250, 600, 300, !mouse_check_button(mb_left));
	draw_set_colour(c_black);
	createStatusText("Try Again", 433, 260, 1.5);
	if (mouse_check_button(mb_left)) {
		room_restart();
	}
}