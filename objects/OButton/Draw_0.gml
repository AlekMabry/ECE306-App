
if (pressed)
{
	draw_set_color(color_pressed);
}
else
{
	draw_set_color(color_main);
}
	
draw_rectangle(x, y, x + 512, y + 96, false);

draw_set_font(FMain);
draw_set_color(c_white);

draw_text(x + 256 - (string_width(label) / 2), y + 16, label);