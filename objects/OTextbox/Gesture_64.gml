var xTap = event_data[? "posX"];
var yTap = event_data[? "posY"];

if (!bEditing)
{
	if (xTap >= x &&
		xTap <= x + 16 + ((charWidth + 1) * field_length) + 16 &&
		yTap >= y &&
		yTap <= y + 16 + 64 + 16)
	{
		bEditing = true;
		keyboard_string = field;
		keyboard_virtual_show(kbv_type_url, kbv_returnkey_default, kbv_autocapitalize_none, false);
	}
}
