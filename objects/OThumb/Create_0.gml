
bClicked = false;		// Currently tracking mouse
mouseDevice = 0;		// Tracking device
xVec = 0;				// Vector to thumb
yVec = 0;				// Vector to thumb
radius = 320;
thumbRadius = 96;
real_radius = radius - thumbRadius;

x = room_width - (96 + radius);
y = room_height - (96 + radius);

global.vL = 0.0;
global.vR = 0.0;