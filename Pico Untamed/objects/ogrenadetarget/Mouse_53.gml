if clicked = 0 && visible
{
	instance_create_layer(oPico.x, (oPico.y - 60), layer, grahnade);
	clicked = 1;
	visible = false;
}