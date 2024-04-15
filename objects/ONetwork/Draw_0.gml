draw_set_font(FMain);

if (global.bConnected)
{
	draw_set_colour(c_green);
	draw_rectangle(0, 0, 16 + string_width("DISCONNECTED") + 16, 16 + 64 + 16, false);
	draw_set_colour(c_white);
	draw_text(16, 16, "CONNECTED");
}
else
{
	if (global.bAttemptingConnect)
	{
		draw_set_colour(c_blue);
		draw_rectangle(0, 0, 16 + string_width("DISCONNECTED") + 16, 16 + 64 + 16, false);
		draw_set_colour(c_white);
		draw_text(16, 16, "ATTEMPTING");
	}
	else
	{
		draw_set_colour(c_red);
		draw_rectangle(0, 0, 16 + string_width("DISCONNECTED") + 16, 16 + 64 + 16, false);
		draw_set_colour(c_white);
		draw_text(16, 16, "DISCONNECTED");
	}
}

draw_set_color(c_black);
draw_set_font(FMain);
draw_text(16, 256, string_format(global.vL, 4, 2));
draw_text(16+string_width("000000000"), 256, round(duty(global.vL)))
draw_text(16, 512, string_format(global.vR, 4, 2));
draw_text(16+string_width("000000000"), 512, round(duty(global.vR)))
draw_text(16, 768, global.cmd);