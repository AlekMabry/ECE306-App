xVec = device_mouse_x(0) - x;
yVec = device_mouse_y(0) - y;
var len = sqrt(power(xVec, 2) + power(yVec, 2));

if (device_mouse_check_button_pressed(0, mb_any) && (len <= (radius)))
{
	bClicked = true;
}

if (device_mouse_check_button_released(0, mb_any))
{
	bClicked = false;
}

if (bClicked)
{
	xVec = device_mouse_x(0) - x;
	yVec = device_mouse_y(0) - y;

	var len = sqrt(power(xVec, 2) + power(yVec, 2));

	if (len > real_radius)
	{	
		var xVecNorm = xVec / len;
		var yVecNorm = yVec / len;
	
		xVec = xVecNorm * real_radius;
		yVec = yVecNorm * real_radius;
	}	
}
else
{
	xVec = 0;
	yVec = 0;
}

arcade_drive(xVec / real_radius, -(yVec / real_radius));