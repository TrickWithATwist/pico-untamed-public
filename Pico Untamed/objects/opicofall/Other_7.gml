if (sprite_index == picocrouch)
{
	oPico.visible = true;
	obuttonup.visible = true;
	layer_set_visible("inventory", true);
	layer_set_visible("uzi", true);
	instance_destroy();
}
