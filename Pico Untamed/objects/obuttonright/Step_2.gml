 //transition if button has been clicked
if (clicked = 1) and (oPico.transition = 1)
{
	//if and switch statements for determining next room depending on floor and then room
	if ORoomManager.myfloor == 1
	{
		switch (ORoomManager.myroom)
		{
			case 1:
				room_goto(f1r2);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 2;
			break;
			case 2:
				room_goto(f1r3);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 3;	
			break;
			case 11:
				room_goto(f1r2);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 2;
			break;
			case 3:
				room_goto(f1r4);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 4;
			break;
			case 6:
				room_goto(f1r3);
				ORoomManager.mydirection = 0;
				ORoomManager.myroom = 3;
			break;
		}
	}
	if ORoomManager.myfloor == 2
	{
		switch(ORoomManager.myroom)
		{
			case 1:
				room_goto(f2r2);
				ORoomManager.mydirection = 1;
				ORoomManager.myroom = 2;
			break;
				
		}
	}
}