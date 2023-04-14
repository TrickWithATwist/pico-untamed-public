 //transition if button has been clicked
if (clicked = 1) and (oPico.transition = 1)
{
	
	//if and switch statements for determining next room depending on floor and then room
	if (ORoomManager.myfloor == 1) and (transitiondone = 0)
	{
		switch (ORoomManager.myroom)
		{
			case 2:
				room_goto(f1r11);
				ORoomManager.mydirection = 0;
				ORoomManager.myroom = 11;
			break;
			case 11:
				room_goto(f1r12);
				ORoomManager.myroom = 12;
			break;
			case 4:
				room_goto(f1r5);
				ORoomManager.myroom = 5;
				ORoomManager.mydirection = 1;
			break;
			case 3:
				if ORoomManager.fleetdefeated = 0
				{
					room_goto(f1r6p1);
					ORoomManager.myroom = 6;
				}
				else
				{
					room_goto(f1r6real);
					ORoomManager.myroom = 6;
					ORoomManager.mydirection = 0;
				}
			break;
			case 6:
				room_goto(f2r1);
				ORoomManager.myroom = 1;
				ORoomManager.mydirection = 1;
				ORoomManager.myfloor = 2;
			break;
			
		}
		transitiondone = 1;
	}
	if (ORoomManager.myfloor == 2) and (transitiondone = 0)
	{
		switch (ORoomManager.myroom)
		{
			case 1:
				room_goto(f1r6real);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 6;
				ORoomManager.myfloor = 1;
			break;
			case 4:
				room_goto(f2r5);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 5;
			break;
			case 5:
				room_goto(f2r4);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 4;
			break;
			case 7:
				if ORoomManager.atomicadefeated = 0
				{
					room_goto(f2r8p1);
				}
			break;
		}
		transitiondone = 1;
	}
}
