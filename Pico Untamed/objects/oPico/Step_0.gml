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
	sprite_index = picoidle;
	image_speed = 1;
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
				oguard.image_xscale = -1 * oguard.image_xscale;
			}
			else
			{
				image_xscale = image_xscale;
				oguard.image_xscale = oguard.image_xscale;
			}
			oguard.guardalive = 0;
			hsp = 1;
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
		orock.playerchoose = 0;
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