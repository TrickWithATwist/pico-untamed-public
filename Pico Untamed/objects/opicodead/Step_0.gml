if animationdone = 1
{
	image_index = 5;
	if oneframe = 0
	{
		//makes buttons show up
		orespawnbutton.behavior = 1;
		odont.behavior = 1;
		oneframe = 1;
	}
}
if olight.lightshow = 1
{
	animationdone = 2;
	sprite_index = picofloat;
	y -= 25/60;
	
}