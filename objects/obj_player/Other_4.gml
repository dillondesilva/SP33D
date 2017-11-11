/// @description Dynamically Generate Obstacles if In Endless Runner Mode
// Check if we're in Endless Runner Mode
if (room_get_name(room) == "rm_endless_runner") {
	// Code to dynamically generate obstacles
	if (global.endless_runner) {
		alarm[0] = irandom_range(30, 420);
		generateObstacles(1120, 340, obj_standard_spike);
	}
}