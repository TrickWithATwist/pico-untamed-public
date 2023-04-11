if ORoomManager.grenadepickup = 0
{
	image_alpha = 1;
	obuttonright.visible = false;
}
else
{
	image_alpha = 0;
	if oneframe = 0
	{
		obuttonright.visible = true;
		oneframe = 1;
	}
}