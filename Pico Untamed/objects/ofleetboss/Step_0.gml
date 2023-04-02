//everytime the fleet cool down gets to two he moves to a random location on screen
if cooldowncurrent <= 0
{
	movementcounter += 1;
	cooldowncurrent = cooldown;
	randx = irandom_range(100, 1820);
	randy = irandom_range(150,384);
}

cooldowncurrent = max(0, cooldowncurrent - 1);

x += (randx - x) * .2;
y += (randy - y) * .2;

if movementcounter = 3
{
	if unoframe = 0
	{
		//sprite_index = sfleetshoot;
		
	}
	if unoframe = 1
	{
		sprite_index = sfleetbossbase;
		movementcounter = 0;
		audio_play_sound(gunshot, 1, 0);
	}
	if costumecurrent < costumecooldown
	{
		sprite_index = sfleetshoot;
		costumecurrent += .5/20;
	}
	else
	{
		unoframe = 1;
	}
}
if movementcounter < 3
{
	unoframe = 0;
	costumecurrent = 0;
}