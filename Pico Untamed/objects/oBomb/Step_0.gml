vsp += grv;
y = min(967, y+vsp);

if (y == 967) cooldownCurrent = max( 0, cooldownCurrent-1 );

if (cooldownCurrent == round(cooldown/2)) exploding = true;

if (exploding)
{
	offsetX = random_range(-4, 4);
	offsetY = random_range(-2, 2);
}

if (cooldownCurrent == 0)
{
	//create explosion object and destroy self
	instance_create_layer(x, y, layer, oExplosion);
	instance_destroy();
}
