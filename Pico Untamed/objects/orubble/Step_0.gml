angle += angleSpeed;
angle = angle mod 360;

if tact = 1
{
	vsp += grv;
	y += vsp;
	
	if (y > room_height + sprite_height) instance_destroy();
}
if place_meeting(x,y,oPicoboss)
{
	tact = 3;
}
if tact = 3
{
	instance_create_layer(x, y + 30, layer, oExplosion);
	instance_destroy();
}
if tact = 2
{
	instance_create_layer(x, y, layer, orockexplosionsafe);
	instance_destroy();
}