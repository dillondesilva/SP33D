/// @description Player Movement and Collisions

// Jumping
space = keyboard_check_pressed(vk_space);
yy = spd *(space * -1);
y += yy;


// Collisions with Ground
if (yy < 0) {
	// Checking if a legitamate jump can be made
	if (space && jump_height != 2) {
		vspeed = -10;
		gravity = 0.5;
		sprite_index = spr_player_jump;
		jump_height += 1;
	}
	
	// The code actually checking for the collision with the grass
	var c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (c1 != 0 || c2 != 0) {
		y = ((bbox_top + 16) & ~15) - spr_bbox_top;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_player_right;
		jump_height = 0;
	}
	
} else {
	var c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (c1 != 0 || c2 != 0) {
		y = ((bbox_bottom & ~15) - 1) - spr_bbox_bottom;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_player_right;
		jump_height = 0;
	}
} 

// Code to stop game on game over
if (global.game_over) {
	speed = 0;
	image_speed = 0;
}