//https://xiaoxiae.github.io/Robotics-Simplified-Website/drivetrain-control/arcade-drive/

function arcade_drive(rotate, drive)
{
	var maximum = max(abs(drive), abs(rotate));
	var total = drive + rotate;
	var difference = drive - rotate;

    // set speed according to the quadrant that the values are in
    if (drive >= 0)
	{
        if (rotate >= 0)
		{
			// I quadrant
            global.vL = maximum;
            global.vR = difference;
		}
        else
		{
			// II quadrant
            global.vL = total;
            global.vR = maximum;
		}
	}
    else
	{
        if (rotate >= 0)
		{
			// IV quadrant
            global.vL = total;
            global.vR = -maximum;
		}
        else
		{
			// III quadrant
            global.vL = -maximum;
            global.vR = difference;
		}
	}
}