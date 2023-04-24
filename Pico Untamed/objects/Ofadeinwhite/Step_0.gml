image_alpha -= fade_speed;

if image_alpha <= 0
{
	if instance_exists(oHPbar)
	{
		oHPbar.visible = true;
	}
	instance_destroy();
}

