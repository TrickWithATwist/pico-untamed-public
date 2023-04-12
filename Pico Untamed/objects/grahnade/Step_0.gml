
//if grenade is not at the target then it goes to target
if (x != ogrenadetarget.x) and (y != ogrenadetarget.y)
{
	x += ((randx - x) * .2) 
	y += ((randy - y) * .2)
}
else
{
	//after it gets to the target it explodes
	//grenade stays still for one second
	if cooldowncurrent != cooldown
	{
		cooldowncurrent += 1/60;
	}
	else
	{
		//explodes and checks if the guard has been killed or not
		if oneframe = 0
		{
			//play explosion sound
			audio_play_sound(boom, 1, 0);
			oneframe = 1;
		}
		
	}
}