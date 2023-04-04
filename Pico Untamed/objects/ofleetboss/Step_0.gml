
//fleet does this below if his hp is not 0


if (fleethp != 0) or (fleethp > 0)
{
//everytime the fleet cool down gets to two he moves to a random location on screen
if cooldowncurrent == 0
{
	movementcounter += 1;
	cooldowncurrent = cooldown;
	randx = irandom_range(100, 1820);
	randy = irandom_range(150, 384);
}

cooldowncurrent = max(0, cooldowncurrent - 1);

x += ((randx - x) * .2) + sin_oscillate(-5,5,10);
y += ((randy - y) * .2) + sin_oscillate(-5,5,5);


if movementcounter = 3
{
	//destroys box if protecting pico
	if oneframe = 0
	{
		//checks if pico is protected
		if oPicoboss.protected = 1
		{
			obossbox1.boxhp -= 1;
			oneframe = 1;
		}
		if oPicoboss.protected = 2
		{
			obossbox2.boxhp -= 1;
			oneframe = 1;
			
		}
	}
	
	
	
	
	if unoframe = 0
	{
		//sprite_index = sfleetshoot;
		
	}
	if unoframe = 1
	{
		sprite_index = sfleetbossbase;
		movementcounter = 0;
		audio_play_sound(fleetshotgun, 1, 0);
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
	oneframe = 0;
	costumecurrent = 0;
}
}