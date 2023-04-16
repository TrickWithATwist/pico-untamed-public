vsp += grv;
y += vsp;

cooldownCurrent = max( 0, cooldownCurrent-1 );

if (cooldownCurrent == round(cooldown/2)) exploding = true;

if (exploding)
{
	offsetX = random_range(-2, 2);
	offsetY = random_range(-1, 1);
}

if (cooldownCurrent == 0)
{
	instance_destroy();
}
