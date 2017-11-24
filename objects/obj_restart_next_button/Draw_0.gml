/// @description Draw Player or Next Level Button
// Checking whether to change player into a next level button on collision with flag

if (global.hit_flag) {
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