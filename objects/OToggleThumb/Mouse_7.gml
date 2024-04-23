pressed = 0;

if (global.bThumbEnable)
{
	global.bThumbDisableSent = true;
	global.bThumbEnable = false;
	
	var cmd = "/" + global.vehiclePin + "A00000000\r\n";
	command(cmd);
}
else
{
	global.bThumbEnable = true;
}