global.bConnected = false;
global.bAutoConnect = true;
global.bAttemptingConnect = false;
global.client = -1;
global.vehicleIP = "192.168.1.128";
global.vehiclePin = "1234";
global.vehiclePort = "8080";
global.cmd = "";

bLastLeftNeg = false;	// Prevent quickly changing directions
bLastRightNeg = false;

stepTime = 0;

draw_set_font(FMain);
charWidth = string_width("0");

var ipOffset = 16 + string_width("DISCONNECTED") + 16;
ipTextbox = instance_create_layer(ipOffset, 0, 0, OTextbox,
	{
		field_length : 15,
		field: global.vehicleIP,
		eventID: 0
	});
	
var portOffset = ipOffset + 16 + (16 * charWidth) + 16;
portTextbox = instance_create_layer(portOffset, 0, 0, OTextbox,
	{
		field_length : 5,
		field: global.vehiclePort,
		eventID: 1
	});