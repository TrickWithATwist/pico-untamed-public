if fadeshow = 1
{
	if image_alpha <= 1
	{
		image_alpha += 1/30;
	}
	else
	{
		
			//instance_create_layer(0,0, layer ,oHPbar);
			ORoomManager.myroom = 1;
			ORoomManager.mydirection = 1;
			ORoomManager.myfloor = 1;
			room_goto(f1r1);
	}
}