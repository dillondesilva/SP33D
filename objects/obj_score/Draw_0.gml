/// @description Draw Score

// Set pen color
draw_set_color(c_black);

// Call our createStatusText func to draw text
createStatusText("Score: " + string(score), 10, 10, 2.5);