if picocutscenept = 0
{
	sprite_index = picoidle;
}
if picocutscenept = 1
{
	if (sprite_index != picogunout)
	{
		sprite_index = picogunout;
	}
	cooldowncurrent += 1/60
	if cooldowncurrent = cooldown
	{	
		if oneframe = 0
		{
			ofleetp1.cutscenept = 1;
			oneframe = 1;
		}
	}
}
if alreadyshot = 1
{
	image_speed = 0;
	image_index = 6;
}
