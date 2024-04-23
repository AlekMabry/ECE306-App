
if (global.bThumbEnable)
{
	if (!pressed)
	{
		draw_set_color($FF39B54A);
	}
	else
	{
		draw_set_color($FF006837);
	}
	
	draw_rectangle(x, y, x + 512, y + 96, false);
	draw_set_font(FMain);
	draw_set_color(c_white);
	draw_text(x + 256 - (string_width("Thumb Enabled") / 2), y + 16, "Thumb Enabled");
}
else
{
	if (!pressed)
	{
		draw_set_color($FF272DC1);
	}
	else
	{
		draw_set_color($FF141761);
	}
	
	draw_rectangle(x, y, x + 512, y + 96, false);
	draw_set_font(FMain);
	draw_set_color(c_white);
	draw_text(x + 256 - (string_width("Thumb Disabled") / 2), y + 16, "Thumb Disabled");
}