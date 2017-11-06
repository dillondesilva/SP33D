/// @description Move Bullet
// You can write your code in this editor
speed = -15;

// Code to destroy
if (global.game_over) {
	with(other) {
		instance_destroy();
	}
}