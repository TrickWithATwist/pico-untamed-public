if ready = 1
{
	if image_blend != 1
	{
		image_blend += 1/60;
	}
	else
	{
		room_goto(f1r6real);
	}
}