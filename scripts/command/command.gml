
function command(str)
{
	if (global.bConnected)
	{
		global.cmd = str;
		var buf = buffer_create(string_length(str) + 1, buffer_fixed, 1);
		buffer_write(buf, buffer_string, global.cmd);
		network_send_raw(global.client, buf, buffer_get_size(buf) - 1);
	}
}