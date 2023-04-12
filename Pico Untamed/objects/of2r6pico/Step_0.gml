if part = 0 
{
	sprite_index = picoidle;
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
	if (x > -1 )
	{
		x += -25;
	}
}