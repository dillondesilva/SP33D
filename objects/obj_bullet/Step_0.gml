/// @description Move Bullet
// You can write your code in this editor
speed = -15;

// Code to stop game on game over
if (global.game_over) {
	speed = 0;
	image_speed = 0;
}