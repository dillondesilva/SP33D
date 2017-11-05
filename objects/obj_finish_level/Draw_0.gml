/// @description Insert description here
// You can write your code in this editor
// Setting our Draw Tools
draw_set_color(c_yellow);

// Checking for Player Collision with Flag To Draw Text
if (flag_hit != true) {
	draw_self();
} else {
	draw_text_ext_transformed(380, 199, "Level Complete", 3, 210, 2, 2, image_angle);
}