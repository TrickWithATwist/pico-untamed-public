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
				//room_goto(f1r12);
				ORoomManager.myroom = 12;
			break;
			
		}
	}
}