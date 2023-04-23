if tact = 1
{
	y += 10;
}
if place_meeting(x,y,oPicoboss)
{
	tact = 3;
}
if tact = 3
{
	instance_create_layer(x, y, layer, orockexplosion);
	instance_destroy();
}
if tact = 2
{
	instance_create_layer(x, y, layer, orockexplosionsafe);
	instance_destroy();
}