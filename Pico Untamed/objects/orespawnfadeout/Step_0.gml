if fadeshow = 1
{
	if image_alpha <= 1
	{
		image_alpha += 1/30;
	}
	else
	{
		if ORoomManager.fleetdefeated = 0
		{
			instance_create_layer(0,0, layer ,oHPbar);
			ORoomManager.myroom = 2;
			ORoomManager.mydirection = 1;
			room_goto(f1r2);
		}
	}
}