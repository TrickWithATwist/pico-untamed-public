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
if picomove = 0
{
	sprite_index = picoidle;
	image_speed = 1;
}

//pico behavior for moving
if picomove > 0
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
	if (x <= -1) or (x >= room_width + 1)
	{
		//check buttons if they are clicked or not
		if obuttonright.clicked = 1
		{
			Ofadeout.roomfade = 1;
		}
		
	}
}
