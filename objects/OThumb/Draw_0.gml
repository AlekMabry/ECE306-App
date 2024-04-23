draw_circle_colour(x, y, radius, c_grey, c_black, true);

if (global.bThumbEnable)
	draw_circle_colour(x + xVec, y + yVec, 96, c_red, c_red, false);
else
	draw_circle_colour(x, y, 96, c_grey, c_grey, false);