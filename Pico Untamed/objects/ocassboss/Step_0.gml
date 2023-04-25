layer_set_visible("uzi", false);

//everytime the fleet cool down gets to two he moves to a random location on screen
if cooldowncurrent <= 0
{
	cooldowncurrent = cooldown;
	randx = irandom_range(100, 1820);
	randy = irandom_range(100,384);
	count += 1
	
	if count > 1
	{
		instance_create_layer(irandom_range(oPicoboss.x,1600), -256, "rubble", orubble);
	}
}

if (cooldowncurrent == round(cooldown/2)) && (count > 1) instance_create_layer(irandom_range(oPicoboss.x,1600), -256, "rubble", orubble);

cooldowncurrent = max(0, cooldowncurrent - 1);

x += ((randx - x) * .2) + sin_oscillate(-5,5,10);
y += ((randy - y) * .2) + sin_oscillate(-5,5,5);


//when hp is 0
if hp = 0
{
	oflashcass.gotime = 1;
}
