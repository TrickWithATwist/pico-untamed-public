//everytime the fleet cool down gets to two he moves to a random location on screen
if cooldowncurrent <= 0
{
	cooldowncurrent = cooldown;
	randx = irandom_range(100, 1820);
	randy = irandom_range(100,384);
}

cooldowncurrent = max(0, cooldowncurrent - 1);

x += (randx - x) * .2;
y += (randy - y) * .2;

if side = 1
{
	image_xscale = .57;
}
else
{
	image_xscale = -.57;
}