
//once the lock appears on the screen the button appears
if (onum5.image_alpha = 1) and (olock.buttonshow = 1)
{
	if image_alpha != 1
	{
		image_alpha += 10/60;
	}
}