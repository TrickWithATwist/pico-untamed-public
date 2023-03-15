/// behaviors depending on value of lock present 
if lockpresent = 0
{
	visible = 0;
	y = initialy;
	vsp = 2;
}
if lockpresent = 1
{
	visible = true; 
	
	//glide up to the screen
	if (y <= finaly) = false
	{
		y -= vsp;
		if y > 300
		{
			vsp += 40/30;
		}
		else
		{
			if vsp != 2
			{
				vsp -= 160/60;
			}
		}
	}
}
if y <= 0
{
	buttonshow = 1;	
}

if (digitcount = 5) and (lestring != "43078") 
{
	lestring = "Invalid";
	cooldowncurrent1 += 2/60;
}
else
{
	if (digitcount = 5) and (lestring = "43078")
	{
		stupidstupid = 1;
		lestring = "Valid";
		cooldowncurrent1 += 2/60;
		ORoomManager.room4unlock = 1;
	}
}
if cooldowncurrent1 = cooldown1
{
	opasswrdfade.image_alpha = 0;
	lockpresent = 0;
	cooldowncurrent1 = 0;
	digitcount = 0;
	lestring = "";
	buttonshow = 0;
	onum1.image_alpha = 0;
	onum2.image_alpha = 0;
	onum3.image_alpha = 0;
	onum4.image_alpha = 0;
	onum5.image_alpha = 0;
	onum6.image_alpha = 0;
	onum7.image_alpha = 0;
	onum8.image_alpha = 0;
	onum9.image_alpha = 0;
	obuttonleft.visible = true;
	if stupidstupid = 1
	{
		obuttonup.visible = true;
	}
	//draw_set_color(c_white);
}