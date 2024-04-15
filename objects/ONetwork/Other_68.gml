
switch (async_load[? "type"])
{
	case network_type_connect:
		global.bConnected = true;
		global.bAttemptingConnect = false;
		break;
		
	case network_type_disconnect:
		global.bConnected = false;
		global.bAttemptingConnect = false;
		break;
		
	case network_type_non_blocking_connect:
		global.bConnected = async_load[? "succeeded"];
		global.bAttemptingConnect = false;
		break;
		
	case network_type_up:
		global.bConnected = true;
		global.bAttemptingConnect = false;
		break;
		
	case network_type_up_failed:
		global.bConnected = false;
		global.bAttemptingConnect = false;
		break;
}