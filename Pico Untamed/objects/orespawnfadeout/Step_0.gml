if fadeshow = 1
{
	if image_alpha <= 1
	{
		image_alpha += 1/30;
	}
	else
	{
		
			//instance_create_layer(0,0, layer ,oHPbar);
			if ORoomManager.finalstart = 0
			{
				ORoomManager.myroom = 1;
				ORoomManager.mydirection = 1;
				ORoomManager.myfloor = 1;
				room_goto(f1r1);
				oMusicManager.musState = music.floor1intro;
			}
			if ORoomManager.finalstart = 1
			{
				if oneframe = 0
				{
					instance_create_layer(0,0, "HP" ,oHPbar);
					oneframe = 1
				}
				room_goto(rphase1);
			}
			if ORoomManager.finalstart = 2
			{
				if oneframe = 0
				{
					instance_create_layer(0,0, "HP" ,oHPbar);
					oneframe = 1
				}
				room_goto(rphase2);
			}
	}
}