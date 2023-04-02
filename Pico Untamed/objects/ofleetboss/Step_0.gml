//everytime the fleet cool down gets to two he moves to a random location on screen
if cooldowncurrent != cooldown
{
	cooldowncurrent += 1/60;
	currentrandx = randx;
	currentrandy = randy;
}
if cooldowncurrent = cooldown
{
	if (x != currentrandx) and (y != currentrandy)
	{
		x = lerp(x, currentrandx, 0.2); 
		y = lerp(y, currentrandx, 0.2);
	}
	else
	{
		//sets up new location and cooldown starts all over again
		randx = irandom_range(100, 1820);
		randy = irandom_range(100,384);
		cooldowncurrent = 0
		
	}
	
	
}