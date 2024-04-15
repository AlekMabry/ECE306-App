/// Converts 0-1 motor power scale to a transmittable duty cycle.
function duty(scale)
{
	var magnitude = abs(scale);
	magnitude = (21758 * power(magnitude, 2)) + (1842.1 * magnitude);
	
	if (scale < 0)
	{
		magnitude = -magnitude;
	}
		
	return magnitude;
}