 //transition if button has been clicked
if (clicked = 1) and (oPico.transition = 1)
{
	
	//if and switch statements for determining next room depending on floor and then room
	if ORoomManager.myfloor == 1
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
		}
	}
}