
if clicked = 0
{

	//get pico to move
	oPico.finalx = x
	oPico.picomove = 1;

	//turn invisible 
	visible = false;
	
	//change clicked value
	clicked = 1;
}


//if and switch statements for determining next room depending on floor and then room
//if ORoomManager.myfloor == 1
//{
//	switch (ORoomManager.myroom)
//	{
//		case 1:
//			room_goto(f1r2);
//			ORoomManager.mydirection = 1;
//		break;
//	}
//}

