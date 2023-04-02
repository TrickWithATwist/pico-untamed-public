//everytime the fleet cool down gets to two he moves to a random location on screen

cooldowncurrent = max(0, cooldowncurrent - 1);

if cooldowncurrent <= 0 
{
	cooldowncurrent = cooldown;
	randx = irandom_range(100, 1820);
	randy = irandom_range(100,384);
}
x += (randx - x) * .2; 
y += (randy - y) * .2;