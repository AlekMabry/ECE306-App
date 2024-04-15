
function to_hex(val)
{
	var u16 = abs(val);
	if (val < 0)
	{
		// Two's complement	
		u16 = ~u16;
		u16 += 1;
	}
	
	str = "";
	str += to_hex_char((val >> 12) & $000F);
	str += to_hex_char((val >> 8) & $000F);
	str += to_hex_char((val >> 8) & $000F);
	str += to_hex_char(val & $000F);
	
	return str;
}