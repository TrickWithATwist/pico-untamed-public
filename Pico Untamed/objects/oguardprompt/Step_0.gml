//code for when prompt should show up

if oPico.picohiding = 1
{
	if image_alpha != 1
	{
		image_alpha += (1/120);
	}
}
else
{
	image_alpha = 0;
}