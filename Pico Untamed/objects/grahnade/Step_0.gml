
//if grenade is not at the target then it goes to target
if place_meeting(x,y,ogrenadetarget) = false
{
	x += ((ogrenadetarget.x - x) * .2) 
	y += ((ogrenadetarget.y - y) * .2)
}
else
{
	//after it gets to the target it explodes
	//grenade stays still for one second
	if cooldowncurrent <= cooldown
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
		sprite_index = sexplosion;
		if done = 0
		{
			if place_meeting(x,y,oguardshield)
			{
				oguardshield.guardalive = 0;
			}
		}
		else
		{
			if oguardshield.guardalive = 1
			{
				ogrenadetarget.visible = true;
				ogrenadetarget.clicked = 0;
			}
			instance_destroy();
		}
	}
}