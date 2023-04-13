if (state == 0)
{
	if (y <= 704)
	{
		y += 40;
	}
	else
	{
		y = 704;
		sprite_index = picocrouch;
		image_index = 0;
		state = 1;
	}
}
