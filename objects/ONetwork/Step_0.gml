if (global.bAutoConnect && !global.bConnected && !global.bAttemptingConnect)
{
	if (!global.client)
	{
		global.client = network_create_socket(network_socket_tcp);
	}
	
	network_connect_raw_async(global.client, global.vehicleIP, real(global.vehiclePort));
	global.bAttemptingConnect = true;
}

// Every 200ms
if (global.bConnected && stepTime++ >= 6)
{
	// Convert to normalized values
	var left = round(duty(global.vL));
	var right = round(duty(global.vR));
	
	// Prevent changing motor directions until safety check is implemented
	var bLeftNeg = left < 0;
	if (bLeftNeg != bLastLeftNeg)
	{
		bLastLeftNeg = bLeftNeg;
		
		left = 0;
		right = 0;
	}
	
	var bRightNeg = right < 0;
	if (bRightNeg != bLastRightNeg)
	{
		bLastRightNeg = bRightNeg;
		
		left = 0;
		right = 0;
	}	
	
	// Format command
	global.cmd = "/" + global.vehiclePin + "A" + to_hex(left) + to_hex(right) + "\r\n";
	var buf = buffer_create(17, buffer_fixed, 1);
	buffer_write(buf, buffer_string, global.cmd);
	network_send_raw(global.client, buf, buffer_get_size(buf) - 1);
	stepTime = 0;
}