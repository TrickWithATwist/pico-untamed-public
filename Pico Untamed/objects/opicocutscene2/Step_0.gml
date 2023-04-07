if (part = 0) and (sprite_index = picoshoot) and (ofleetend.fleetded != 2)
{
	image_index = 9;
}
if (shotdone = 1) and (sprite_index = picoshoot) and (ofleetend.fleetded = 2)
{
	image_index = 9;
}
if ofleetend.fleetded = 2
{
	if oneframe = 0
	{
		image_index = 0;
		audio_play_sound(gunsfx, 1, 0);
		oneframe = 1;
	}
	else
	{
		if image_index = 9
		{
			shotdone = 1;
		}
	}
}