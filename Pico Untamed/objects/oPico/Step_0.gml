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
}

//pico behavior for moving
if picomove > 0
{
	sprite_index = picorun;
	x += 15;
	//change room when pico is at finalx
	if (x <= -1) or (x >= room_width + 1)
	{
		//check buttons if they are clicked or not
		if obuttonright.clicked = 1
		{
			transition = 1;
		}
		
	}
}
