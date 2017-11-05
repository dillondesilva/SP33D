/// @description Draw Player or Next Level Button
// You can write your code in this editor

// Checking whether to change player into a next level button on collision with flag
if (hit_flag != true) {
	draw_self();
} else {
	draw_button(260, 220, 560, 120, !mouse_check_button(mb_left));
}