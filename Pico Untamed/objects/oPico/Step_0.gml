 //establishing inital room position
//switch statement determines if pico facing left or right
if counter = 0
{
	switch (ORoomManager.mydirection)
	{
		case 1:
			image_xscale = .6;
			x = 448;
			counter = 1;
		break;
	
		case 0:
			image_xscale = .6 * -1;
			x = 1568;
			counter = 1;
		break;
	}
}

//pico behavior for not moving
if (picomove = 0) and (shooting = 0)
{
	if room != (f1r12)
	{
		sprite_index = picoidle;
		image_speed = 1;
	}
	else
	{
		sprite_index = picoback;
		image_speed = 1;
		x = 948.8047;
	}
}

//pico behavior if shooting
if (picomove = 0) and (shooting = 1)
{
	if picohiding = 0
	{
		sprite_index = picoshoot;
	}
	if picohiding = 1
	{
		if (oguard.x > x) or (oguard.x < x)
		{
			visible = true;
			sprite_index = picoshoot;
			oShadow.visible = true;
			if oguard.x > x
			{
				image_xscale = -1 * image_xscale;
				if (oguard.x > rockdestination)
				{
					oguard.image_xscale = -1 * oguard.image_xscale;
				}
			}
			else
			{
				image_xscale = image_xscale;
				if (oguard.x > rockdestination)
				{
					oguard.image_xscale = -1 * oguard.image_xscale;
				}
			}
			oguard.guardalive = 0;
			oguard.deadstart = true;
			hsp = 1;
			cooldowncurrent = 0;
			ORoomManager.guardtutorial = 1;
			if room = f1r11
			{
				obuttonright.visible = true;
				obuttonup.visible = true;
				//shooting = 0;
			}
		}
		
	}
}

//pico behavior for moving
//only if pico move is 1
if picomove = 1
{
	sprite_index = picorun;
	x += hsp * sign(image_xscale);
	//makes horizontal speed faster until max is reached
	if hsp < maxhsp
	{
		hsp += 5/6;
	}
	
	//running speed changes based on hsp value
	if hsp < 10
	{
		image_speed = .5;
	}
	else
	{
		image_speed = 1.7;
	}
	
	//change room when pico is at finalx
	//only if picomove = 1 ( if left or right direction buttons were selected)
	if picomove = 1
	{
		if (x <= -1) or (x >= room_width + 1)
		{
			//check buttons if they are clicked or not
			if (obuttonright.clicked = 1) or (obuttonleft.clicked = 1)
			{
				Ofadeout.roomfade = 1;
			}
		
		}
	}
}
if picomove = 2
{
	if ((obuttonup.x - 50) > x  = false) and ((obuttonup.x + 50) < x = true)
	{
		sprite_index = picorun;
		x += hsp * sign(image_xscale);
		//makes horizontal speed faster until max is reached
		if hsp < maxhsp
		{
			hsp += 5/6;
		}
	
		//running speed changes based on hsp value
		if hsp < 10
		{
			image_speed = .5;
		}
		else
		{
			image_speed = 1.7;
		}
	}
	else
	{
		sprite_index = picoback;
		image_speed = 0;
		cooldowncurrent += 2/60;
		
		//when one second passed 
		if (cooldowncurrent = cooldown)
		{
			//check if upbutton clicked
			if obuttonup.clicked = 1
			{
				Ofadeout.roomfade = 1;
			}
		}
	}
}
//movement behavior for hiding
if picomove = 3
{
		//if pico shot a gun he goes back to normal
		alreadyshot = 0;
		shooting = 0;
		
		orock.playerchoose = 0;
		orock2.playerchoose = 0;
		if (room = f1r11) oHidebutton2.visible = false;
		if (room = f1r11) oHidebutton.visible = false;
		if ((rockdestination - 50) > x  = false) and ((rockdestination + 50) < x = true)
	{
		sprite_index = picorun;
		x += hsp * sign(image_xscale);
		//makes horizontal speed faster until max is reached
		if hsp < maxhsp
		{
			hsp += 5/6;
		}
	
		//running speed changes based on hsp value
		if hsp < 10
		{
			image_speed = .5;
		}
		else
		{
			image_speed = 1.7;
		}
	}
	else
	{
		sprite_index = picoback;
		image_speed = 0;
		cooldowncurrent += 4/60;
		
		//when one second passed 
		if (cooldowncurrent = cooldown)
		{
			//hide
			//temp there will be animation
			visible = false;
			oShadow.visible = false;
			oHidebutton.visible = false;
			picohiding = 1;
			guardcounter = 4;
			picomove = 0;
			
		}
	}
	
}
if picomove = 4
{
	
	cooldowncurrent += 2/60;
		
	//when one second passed 
	if (cooldowncurrent = cooldown)
	{
		//check if upbutton clicked
		if obuttondown.clicked = 1
		{
			Ofadeout.roomfade = 1;
		}
	}
	
	
}

//stupid behavior for up arrow in room 4 because of dumb bugs :(
if picomove = 5
{
		//rockdesitination is just the x value of the up button in this case
		if (x < rockdestination)
	{
		sprite_index = picorun;
		x += hsp * sign(image_xscale);
		//makes horizontal speed faster until max is reached
		if hsp < maxhsp
		{
			hsp += 5/6;
		}
	
		//running speed changes based on hsp value
		if hsp < 10
		{
			image_speed = .5;
		}
		else
		{
			image_speed = 1.7;
		}
	}
	else
	{
		sprite_index = picoback;
		image_speed = 0;
		cooldowncurrent += 4/60;
		
		//when one second passed 
		if (cooldowncurrent = cooldown)
		{
			if obuttonup.clicked = 1
			{
				Ofadeout.roomfade = 1;
			}	
		}
	}
	
}
//movement behavior for hiding in floor 2 room 3
if picomove = 6
{
		//if pico shot a gun he goes back to normal
		alreadyshot = 0;
		shooting = 0;
		
		of2rock1.playerchoose = 0;
		of2rock2.playerchoose = 0;
		if (room = f2r3) of2Hidebutton2.visible = false;
		if (room = f2r3) of2Hidebutton.visible = false;
		if ((rockdestination - 50) > x  = false) and ((rockdestination + 50) < x = true)
	{
		sprite_index = picorun;
		x += hsp * sign(image_xscale);
		//makes horizontal speed faster until max is reached
		if hsp < maxhsp
		{
			hsp += 5/6;
		}
	
		//running speed changes based on hsp value
		if hsp < 10
		{
			image_speed = .5;
		}
		else
		{
			image_speed = 1.7;
		}
	}
	else
	{
		sprite_index = picoback;
		image_speed = 0;
		cooldowncurrent += 4/60;
		
		//when one second passed 
		if (cooldowncurrent >= cooldown)
		{
			//hide
			//temp there will be animation
			visible = false;
			oShadow.visible = false;
			of2Hidebutton.visible = false;
			of2Hidebutton2.visible = false;
			picohiding = 1;
			if oneframe = 0
			{
				oguardshield.gscount = 1;
				oneframe = 1;
			}
			picomove = 0;
			
		}
	}
	
}