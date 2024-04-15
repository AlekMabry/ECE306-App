if (bEditing)
{
	if (keyboard_virtual_status() == false)
	{
		keyboard_virtual_show(kbv_type_url, kbv_returnkey_default, kbv_autocapitalize_none, false);	
	}
	
	if (keyboard_check_pressed(vk_return))
	{
		bEditing = false;
		field = keyboard_string;
		keyboard_virtual_hide();
		global.eventID = eventID;
		event_perform_object(ONetwork, ev_other, ev_user0);
	}
}

if (++stepCounter > 60)
{
	stepCounter = 0;	
}