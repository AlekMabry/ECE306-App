pressed = 0;

var cmd = "/" + global.vehiclePin + cmd0;
if (cmd_count > 1)
{
	cmd += "/" + global.vehiclePin + cmd1;	
}
cmd += "\r\n";

command(cmd);