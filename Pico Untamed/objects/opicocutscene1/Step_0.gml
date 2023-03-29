if picocutscenept = 0
{
	sprite_index = picoidle;
}
if picocutscenept = 1
{
	if (sprite_index != picoshoot)
	{
		sprite_index = picoshoot;
	}
	else
	{
		if image_index != 5
		{
			image_speed = 1;
		}
		else
		{
			image_speed = 0;
			if oneframe = 0
			{
				ofleetp1.cutscenept = 1;
				oneframe = 1;
			}
		}
	}
}