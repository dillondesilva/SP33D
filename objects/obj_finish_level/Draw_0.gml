/// @description Draw Event
// You can write your code in this editor
// Setting our Draw Tools
draw_set_color(c_yellow);

// Checking for Player Collision with Flag To Draw Text
if (flag_hit != true) {
	draw_self();
} else {
	createStatusText("Level Complete", 345, 190, 2.5);
}