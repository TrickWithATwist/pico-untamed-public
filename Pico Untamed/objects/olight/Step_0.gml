//if light shows up
if lightshow = 1
{
	if image_alpha <= 1
	{
		image_alpha += 1/30;
	}
	else
	{
		if oneframe = 0
		{
			orespawnfadeout.fadeshow = 1;
			oneframe = 1;
		}
	}
}