/// @description Draw Event
// You can write your code in this editor
// Check whether to continue drawing sprite or draw text 
// saying "Game Over"

if (global.game_over != true) {
	draw_self();
} else {
	createStatusText("Game Over", 345, 190, 2.5);
}