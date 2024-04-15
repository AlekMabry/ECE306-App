show_debug_message("User Event 0 Called: {0}", global.eventID);
oNetworkObject = instance_find(ONetwork, 0);

switch (global.eventID)
{
	case 0:	// IP change
		global.vehicleIP = variable_instance_get(oNetworkObject.ipTextbox, "field");
		network_connect_raw_async(global.client, global.vehicleIP, real(global.vehiclePort));
		global.bAttemptingConnect = true;
		global.bConnected = false;
		break;
		
	case 1:	// Port change
		global.vehiclePort = variable_instance_get(oNetworkObject.portTextbox, "field");
		network_connect_raw_async(global.client, global.vehicleIP, real(global.vehiclePort));
		global.bAttemptingConnect = true;
		global.bConnected = false;
		break;
}