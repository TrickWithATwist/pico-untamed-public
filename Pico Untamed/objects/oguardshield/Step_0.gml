if gscount = 0
{
	if of2 = 0
	{
		//creates textbox and makes buttons/ other gui disappear
		obuttonright.visible = false;
		obuttonleft.visible = false;
		instance_create_layer(0,0,"fadein",otextbox);
		otextbox.text_showing = 1;
		layer_set_visible("inventory", false);
		layer_set_visible("uzi", false);
		otextbox.dialogue = 35;
		of2 = 1;
	}
}
if (gscount = 1) or (oPico.picohiding = 1)
{
	 visible = true;
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
		image_speed = 1;
	}
		
	//guard turns around if too far off screen
	if (x > -1) or (x < room_width + 1)
	{
		//hsp = 1
		//image_xscale = -1 * image_xscale;
	}
		
}