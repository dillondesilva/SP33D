/// @description Player Movement and Collisions
// You can write your code in this editor
space = keyboard_check_pressed(vk_space);
if (jump_height != 3) {
	yy = spd *(space * -1);
	y += yy;
	if (space) {
		jump_height += 1;	
	}
} else {
	if (y < 80) {
		jump_limit -= 1;
	} else {
		vspeed = 10;
		gravity = 1;
	}
}


// Collisions with Ground
if (yy < 0) {
	if (jump_height != 3) {
		vspeed = -10;
		gravity = 0.5;
		sprite_index = spr_player_jump;
	}
	
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