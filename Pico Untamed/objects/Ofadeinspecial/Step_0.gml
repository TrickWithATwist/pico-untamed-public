image_alpha -= fade_speed;

if image_alpha <= 0
{
	opicofall.go = 1;
	instance_destroy();
}

if (opicofall.sprite_index = picocrouch) and (opicofall.image_index = 4)
{
	if oneframe = 0
	{
		oPico.visible = true;
		layer_set_visible("inventory", true);
		layer_set_visible("uzi", true);
		oneframe = 1;
	}
}
else
{
		oPico.visible = false;
		layer_set_visible("inventory", false);
		layer_set_visible("uzi", false);
}

