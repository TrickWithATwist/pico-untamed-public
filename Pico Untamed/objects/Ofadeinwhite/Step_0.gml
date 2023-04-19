image_alpha -= fade_speed;

if image_alpha <= 0
{
	oHPbar.visible = true;
	instance_destroy();
}

