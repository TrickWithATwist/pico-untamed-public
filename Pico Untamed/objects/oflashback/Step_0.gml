if go = 1
{
	if (image_alpha < 1) and (count = 0)
	{
		image_alpha += 1/30;
		
	}
	else
	{
		count = 1;
		if cdcurrent = cd
		{
			image_alpha += -1/30;
		}
		else
		{
			cdcurrent += 1/60;
		}
	}
}
if (image_alpha <= 0) and (count = 1) and (go = 1)
{
	instance_create_layer(0,0,"fadein",otextbox);
	otextbox.text_showing = 1;
	//layer_set_visible("inventory", false)
	layer_set_visible("uzi", false);
	otextbox.dialogue = 53;
	go = 2;
	instance_destroy();
}