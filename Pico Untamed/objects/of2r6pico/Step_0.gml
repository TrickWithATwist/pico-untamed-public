if part = 0 
{
	sprite_index = picojustgun;
	if oneframe = 0
	{
		instance_create_layer(0,0,"fadein",otextbox);
		otextbox.text_showing = 1;
		layer_set_visible("inventory", false);
		layer_set_visible("uzi", false);
		otextbox.dialogue = 36;
		oneframe = 1;
	}
}
if part = 1 
{
	sprite_index = picoshot;
	if of2 = 0
	{
		image_index = 0;
		image_speed = 1;
		of2 = 1;
	}
	if (x > -100 )
	{
		x += -25;
	}
	else
	{
		Ofadeoutspecial2.roomfade = 1;
	}
}