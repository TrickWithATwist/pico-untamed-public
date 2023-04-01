if gotime = 1
{
	visible = true;
	if (sprite_index = sflashcircle) and (image_xscale < 1000)  and (image_yscale < 1000) 
	{
		image_xscale += 50/30;
		image_yscale += 50/30;
		if oneframe = 0
		{
			audio_play_sound(gunshot, 1, 0);
			oneframe = 1;
		}
	}
	else
	{
		sprite_index = sflashfade;
		x = 0;
		y = 0;
		image_xscale = 1;
		image_yscale = 1;
	}
}