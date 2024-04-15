draw_set_color(c_black);
draw_rectangle(x, y,
	x + 16 + (charWidth * (field_length + 1)) + 16,
	y + 16 + 64 + 16,
	true);

draw_set_font(FMain);
draw_text(x + 16, y + 16, bEditing ? keyboard_string : field);

if (bEditing && stepCounter < 30)
{
	var cursorX = x + 16 + string_width(keyboard_string);
	draw_rectangle(cursorX, y + 16, cursorX + 2, y + 16 + 64, false);
}