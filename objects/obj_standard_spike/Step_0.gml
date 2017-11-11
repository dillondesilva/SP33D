/// @description Code for each frame
// You can write your code in this editor
speed = -8;

// Code to stop game on game over
if (global.game_over) {
	speed = 0;
	image_speed = 0;
}