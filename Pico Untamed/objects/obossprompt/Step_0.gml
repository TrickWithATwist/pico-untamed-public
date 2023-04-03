if hide = 0
{
	if image_alpha != 1
	{
		image_alpha += (1/60);
	}
}
else
{
	image_alpha -= (1/120);
}
if cooldowncurrent < cooldown
{
	cooldowncurrent += 1/60;
}
else
{
	hide = 1;
}