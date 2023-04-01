if picocutscenept = 0
{
	sprite_index = picoidle;
}
if picocutscenept = 1
{
	if (sprite_index != picogunout)
	{
		sprite_index = picogunout;
		if dumb = 0
		{
			image_index = 0;
			dumb = 1;
		}
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
if picocutscenept = 2
{
	alreadyshot = 2
	sprite_index = picorun;
	image_speed = 1;
	x -= hsp
		//makes horizontal speed faster until max is reached
		if hsp < maxhsp
		{
			hsp += 5/6;
		}
	
		//running speed changes based on hsp value
		if hsp < 10
		{
			image_speed = .5;
		}
		else
		{
			image_speed = 1.7;
		}
}
if picocutscenept = 3
{
	sprite_index = picoback;
	ofleetp2.showup = 1;
}