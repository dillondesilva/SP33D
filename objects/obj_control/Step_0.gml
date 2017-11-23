/// @description Generating Obstacles
// Code to dynamically generate obstacles
if (alarm[0] == -1) {
	alarm[0] = room_speed * random_range(1, 3); 
}

if (alarm[1] == -1) {
	alarm[1] = room_speed * random_range(5, 10);
}